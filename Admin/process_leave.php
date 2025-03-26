<?php
include('../inc/topbar.php');
if (empty($_SESSION['admin-username'])) {
   header("Location: login.php");
   exit();
}
include('../inc/db_connect.php'); // Ensure database connection is included

// Approve leave and update leave balance
if (isset($_GET['id'])) {
   $id = intval($_GET['id']);

   // Fetch leave details
   $sql = "SELECT email, start_date, end_date FROM tblleave WHERE leaveID = ?";
   $stmt = $dbh->prepare($sql);
   $stmt->execute([$id]);
   $leave = $stmt->fetch(PDO::FETCH_ASSOC);

   if ($leave) {
       $email = $leave['email'];
       $start_date = new DateTime($leave['start_date']);
       $end_date = new DateTime($leave['end_date']);
       $diff = $start_date->diff($end_date)->days + 1; // Calculate leave days

       // Update employee leaves
       $updateLeaves = "UPDATE tblemployee SET leaves = GREATEST(0, leaves - ?) WHERE email = ?";
       $stmt = $dbh->prepare($updateLeaves);
       $stmt->execute([$diff, $email]);

       // Approve the leave
       $updateStatus = "UPDATE tblleave SET status = 'Approved' WHERE leaveID = ?";
       $stmt = $dbh->prepare($updateStatus);
       $stmt->execute([$id]);
   }
   header("location: leave_record.php");
   exit();
}

// Decline leave
if (isset($_GET['did'])) {
   $did = intval($_GET['did']);
   
   $sql = "UPDATE tblleave SET status=? WHERE leaveID=?";
   $stmt = $dbh->prepare($sql);
   $stmt->execute(["Declined", $did]);
   
   header("location: leave_record.php");
   exit();
}
?>
