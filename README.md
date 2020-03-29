# gpuVoxels-dg-installation
Easiest way to install gpuVoxels on DeepGreen@UVM

## Step-by-step instruction

1. SSH to DeepGreen via your account. ([Don't have an DeepGreen account?](https://www.uvm.edu/vacc/request-account))

```bash
user@mylaptop:~$ ssh yourNetID@bluemoon-user1.uvm.edu
...
[yourNetID@bluemoon-user1 ~]$ ssh dg-user1
...
[yourNetID@dg-user1 ~]$ cd scratch
[yourNetID@dg-user1 scratch]$ 
```

2. Clone this repo. ([Don't have git?](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))

```bash
[yourNetID@dg-user1 scratch]$ git clone https://github.com/liusida/gpuVoxels-dg-installation.git
```

3. Start an interactive task with 1 GPU using `srun` command. ([More about srun](https://slurm.schedmd.com/srun.html))

```bash
[yourNetID@dg-user1 scratch]$ srun --gres=gpu:1 --pty bash
```

4. Prepare for running. Tell the program to copy newest executables and use Sida's environment.

```bash
[yourNetID@dg-gpunode04 ~]$ cd scratch/gpuVoxels-dg-installation
[yourNetID@dg-gpunode04 gpuVoxels-dg-installation]$ sh update.sh
[yourNetID@dg-gpunode04 gpuVoxels-dg-installation]$ source env.sh
[yourNetID@dg-gpunode04 gpuVoxels-dg-installation]$ ls
env.sh  README.md  update.sh  Voxelyze3  vx3_node_worker  zoo
```

5. Run! Voxelyze! Run!

```bash
[yourNetID@dg-gpunode04 gpuVoxels-dg-installation]$ ./Voxelyze3 -i zoo/basic/
...
# you will see the positions and orientations of voxels over time.
...
```

6. Save the history file.

```bash
[yourNetID@dg-gpunode04 gpuVoxels-dg-installation]$ ./Voxelyze3 -i zoo/basic/ > a.history
```

## More information

How to use `srun`and more commands on DeepGreen? Refer to [DeepGreenDocs](https://wiki.uvm.edu/w/DeepGreenDocs).

Learn even more on `sun` and more commands? Refer to the documentation of software [Slurm](https://slurm.schedmd.com/srun.html).

Learn more how to use gpuVoxels? Refer to [gpuVoxels docs](https://gpuvoxels.readthedocs.io/en/docs/).

How to build VoxCAD from source and play history files? Refer to [gpuVoxels GitHub](https://github.com/liusida/gpuVoxels).
