# Path to the local WAV file
$WAVFilePath = "C:\Users\Christopher\Downloads\cof.wav"

try {
    # This is going to be a simulated failure
    Write-Host "This is about to fail!"
    throw "Something went wrong!"
}
catch {
    # We catch the simulated failure, and....
    Write-Host "Error caught: $($_.Exception.Message)"
    Write-Host "Playing alert sound..."

    # Play the WAV file using System.Media.SoundPlayer
    $player = New-Object system.media.soundplayer
    $player.soundlocation = $WAVFilePath
    $player.playsync()  # This plays the file synchronously
}


