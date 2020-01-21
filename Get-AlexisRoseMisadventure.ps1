#!/usr/bin/env pwsh

<#PSScriptInfo

.VERSION 1.0

.GUID 08016b24-35b0-4749-9134-003c0b7e8849

.AUTHOR David Steimle

.COMPANYNAME 

.COPYRIGHT 

.TAGS 

.LICENSEURI 

.PROJECTURI https://github.com/davidsteimle/AlexisRoseMisadventure/

.ICONURI 

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS 

.EXTERNALSCRIPTDEPENDENCIES 

.RELEASENOTES


#>

<# 

.DESCRIPTION 
 Scripted, less data mining, version of https://twitter.com/charles_jensen/status/1219631069491867648?s=21

#> 
Param(
    [switch]$Respond # Executes function and prints result to screen.
)

function Get-MisadventureText{
    $Choice1 = $One | Get-Random
    $Choice2 = $Two | Get-Random
    $Choice3 = $Three | Get-Random
    if($Choice3 -match "Jared Leto" -and $Choice2 -match "Jared Leto's secret funeral"){
        $Choice3 = "the replacement Jared Leto"
    }
    $Choice4 = $Four | Get-Random
    $Choice5A = $Five | Get-Random
    $Choice5B = $Five | Get-Random
    while($Choice5A -match $Choice5B){
        $Choice5B = $Five | Get-Random
    }
    $Response = "Oh really, David? Okay, well you try being $Choice1 and having to $Choice2 your way out of $Choice3's $Choice4 with "
    if($Choice5A -match "^no"){
        ;
    } else {
    $Response = "$Response only "
    }
    $Response = "$Response $Choice5A and $Choice5B, David. Ugh!"
    $Response = $Response -replace "  "," "
    $Response
}

$One = @(
"fifteen",
"tied up",
"Shanghaied",
"like, really tired",
"on molly",
"kidnapped by Somali pirates, AGAIN,",
"a secret shopper for the Chinese mafia",
"ex-best friends with Ke`$ha",
"given the antidote, but losing it",
"voted Miss Pillipines 2009",
"scouted while getting a facial peel",
"a character witness for the Yakuza",
"first to arrive at the real Jared Leto's secret funeral",
"too pretty for Columbian prison",
"an unwilling concubine of the emperor",
"the Venezuelan Bachelorette",
"told Santa's real and in a Siberian prison",
"drafted by MI-5 because you're so pretty",
"covered in powdered rhino tusk",
"adopted by cannibals in Paraguay",
"told you were adopted and you're really a Romanov princess as a joke, but believeing it for two years",
"ticklish underwater",
"banned from Hong Kong",
"married while you're unconscious",
"the surprise winner of a Japanese game show where humans are the greatest prey",
"waking up in handcuffs",
"nice to RuPaul after what happened at her Hallow'een ball",
"named in Britney's will as her children's legal guardian",
"able to see in the dark because of a new designer drug called Catseye",
"told you have six months to live by a medium on a subway"
)

$Two = @(
"flirt",
"gamble",
"sewer crawl",
"dance battle",
"grift",
"backflip",
"negotiate, IN CANTONESE, DAVID,",
"scuba dive",
"fake seizure",
"barter",
"Argentine tango"
)

$Three = @(
"David Geffen",
"a Saudi Prince",
"Snoop Dogg",
"the Olsen Twins",
"the secret Olsen triplet",
"Ivanka Trump",
"Jared Leto",
"Leo di Caprio",
"Idi Amin's nephew",
"Jonathan Hitler",
"Kim Jong Un",
"Jake Gyllenhaal",
"a Nigerian warlord",
"the old lady from Titanic",
"James Franco",
"that guy you dated who was obsessed with me",
"the owner of Club Scroosh in Bali",
"Madonna",
"Sasha and Melia",
"Vivienne Westwood",
"Selena Gomez's secret twin",
"Kylie Jenner",
"Dad's old accountant",
"Liza Minnelli",
"Matt le Blanc",
"the guy who assassinated the real Jared Leto"
)

$Four = @(
"sex dungeon",
"pleasure barge",
"birthday yacht",
"comaine palace",
"meth lab",
"desert stronghold",
"mountain lair",
"secret diamond mine",
"sex cult",
"basement",
"submarine",
"car boot"
)

$Five = @(
"a pair of broken Manolos",
"a new back tattoo",
"stolen launch codes",
"amnesia",
"a hangover",
"no yen left",
"tinnitus",
"detached retinas",
"a time sensitive invite to Justin Bieber's Christmas party",
"a third grade knowledge of chemistry",
"the orphans you freed",
"a really bad headache",
"no idea who you are",
"a clicky jaw",
"a Native American costume Vogue called 'problematic'",
"a little bit of Alexis stuck in your head",
"your weaponised sexuality",
"fourteen pesetas",
"a toothpick",
"the remains of your guide",
"your cheerleading costume",
"a limited knowledge of offensive Thai massage",
"the timer nearly at zero",
"the one guard who liked you nowhere to be found",
"four visas, none of which feature your real name",
"four million Kuwaiti dinar sewn into your belly dancing costume"
)

if($Respond){
    Get-MisadventureText
}

