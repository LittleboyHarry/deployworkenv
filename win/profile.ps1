# 键盘映射
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Chord Ctrl+LeftArrow -Function BackwardWord
Set-PSReadLineKeyHandler -Chord Ctrl+RightArrow -Function NextWord
function Suspend-HistoryRecord { Set-PSReadLineOption -HistorySaveStyle SaveNothing }

# 跳转到桌面
function Set-LocationToDesktop {
    Set-Location ([System.Environment]::GetFolderPath('desktop'))
}
Set-Alias cdd Set-LocationToDesktop

# 切换为 UTF8 模式
function Switch-Utf8 {
    $nowCoding = [Console]::OutputEncoding
    $newCoding = [Text.Encoding]::UTF8
    if ($nowCoding -ne $newCoding) {
        $global:beforeUtf8Coding = $nowCoding
        [Console]::OutputEncoding = $newCoding
    }
    else {
        [Console]::OutputEncoding = $global:beforeUtf8Coding
    }
}
Set-Alias swu8 Switch-Utf8
