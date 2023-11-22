original = getImageID();
width = getWidth();
height=getHeight();
slices=nSlices;
 
newImage("filtered_stack", "8-bit black", width, height, slices);
filtered_stack = getImageID();
 
 
for (i=1; i<nSlices+1;i++) {
selectImage(original);
setSlice(i); 
run("Morphological Filters", "operation=Closing element=Disk radius=3");
filtered = getImageID();
run("Copy");
selectImage(filtered_stack);
setSlice(i);
run("Paste");
selectImage(filtered);
run("Close");
 
 
}