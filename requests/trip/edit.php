<?php
include '../../include/config.php';
include '../../objects/trip.php';

$trip = new Trip();
$trip->id = isset($_POST['id']) ? $_POST['id'] : null;

$trip->name = isset($_POST['name']) ? $_POST['name'] : null;
$trip->phone = isset($_POST['phone']) ? $_POST['phone'] : null;
$trip->from = isset($_POST['from']) ? $_POST['from'] : null;
$trip->to = isset($_POST['to']) ? $_POST['to'] : null;
$trip->PNR = isset($_POST['PNR']) ? $_POST['PNR'] : null;
$trip->time = isset($_POST['time']) ? $_POST['time'] : null;
$trip->seat = isset($_POST['seat']) ? $_POST['seat'] : null;
$trip->coin = isset($_POST['coin']) ? $_POST['coin'] : null;
$trip->price = isset($_POST['price']) ? $_POST['price'] : null;
$trip->is_round = isset($_POST['is_round']) ? $_POST['is_round'] : 0;
$trip->details = isset($_POST['details']) ? content($_POST['details']) : 0;
$trip->num_guess = isset($_POST['num_guess']) ? $_POST['num_guess'] : 0;
$trip->prioritize = isset($_POST['prioritize']) ? $_POST['prioritize'] : null;
$trip->approve = isset($_POST['approve']) ? $_POST['approve'] : 0;

//echo json_encode($_POST, JSON_UNESCAPED_UNICODE);

if ($trip->id && $trip->name && $trip->phone && $trip->from && $trip->to && $trip->time && $trip->price && $trip->seat && $trip->num_guess) {
	$edit = $trip->update();
	if ($edit) {
		echo ($trip->approve) ? 1 : 2;
	} else echo 0;
	//echo ($edit ? 1 : 0);
	//echo json_encode($data, JSON_UNESCAPED_UNICODE);
} else echo -1;
