const rows = document.querySelectorAll('.row');
const colors = ['green', 'aquamarine', 'yellow', 'orange', 'orangered', 'red'];

const onDragOver = (event) => {
	event.preventDefault();
}

const onDrop = (event) =>{
	event.preventDefault();
	const draggedCardId = event.dataTransfer.getData('id');
	const draggedCard = document.getElementById(draggedCardId);
	event.target.appendChild(draggedCard);
	console.log('dropped the element');
}

rows.forEach((row, index ) => {
	const lable = row.querySelector('.lable');
	lable.style.backgroundColor = colors[index];
	row.ondragover = onDragOver;
	row.ondrop = onDrop;
})
