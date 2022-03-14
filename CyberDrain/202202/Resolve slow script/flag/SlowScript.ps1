$Records = Get-Content 'slowscript.json' | ConvertFrom-Json

Measure-Command {
    $finalobj = New-Object System.Collections.Generic.List[PSObject]
     foreach ($Record in $Records) {
        $Obj = [pscustomobject]@{
            id       = $record.html_url
            type     = $record.type
            repo     = $record.repo.name
            actor    = $record.actor
            url      = $record.repo.url
            public   = $record.public
            login    = $record.actor.login
            repoinfo = $record.repo
            
        }
        $finalobj.Add($Obj)
    }
}