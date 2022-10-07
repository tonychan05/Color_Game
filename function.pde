void randReset() {
  if (boolean(floor(random(2)))) {
    rand1 = rand2 = floor(random(5));
  } else { 
    while (true) {
      rand1 = floor(random(5));
      rand2 = floor(random(5));
      if (rand1 != rand2) break;
    }
  }
}
