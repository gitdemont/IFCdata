commit_all = function(msg,
                      pkgdev = "F:/InDev_Packages/build_IFCdata/",
                      branch = "master",
                      whoami = "gitdemont@gmail.com",
                      all = FALSE,
                      wait = 0.5) {
  hascmd <- length(Sys.which("git")) > 0
  if(!hascmd) stop("can't find git")
  if(missing(msg)) stop("msg can't be missing")
  curwd = getwd()
  on.exit(setwd(curwd))
  setwd(pkgdev)
  if(all) {
    system2(command = "git", args = c("checkout", branch))
    system2(command = "git", args = c("config --global user.email", whoami))
    cmd = list(added = "git add -A",
               committed = sprintf('git commit -m "%s"', msg),
               pushed = "git push")
  } else {
    # tmp_f = tempfile(fileext = ".txt")
    # changes <- readLines(tmp_f)
  }
  confirm <- readline(prompt = "/!\\Type 'Yes' if you are sure to commit and push all modifications: ")
  if(confirm == "Yes") {
    for(i in names(cmd)) {
      system(command = cmd[[i]])
      message(i)
      Sys.sleep(wait)
    }
  } else {
    message("Aborted")
  }
}
# "profund modifications:\nClasses IFC_display -> IFC_info, IFC_offsets -> IFC_offset\nFunctions: getDisplayInfo -> getInfo\nArguments: export_to -> write_to, objects_type -> image_type, display -> info\nnew whoami internal function to allow to recognize input thanks to their class; intended to prevent R arguments partial match\nnew objectParam function to speed object extraction\nbetter automatic detection of input in DisplayGallery/ExportToGallery/ExtractMasks/ExtractImages_to family functions"
commit_all("IFCdata with new files", all = T)