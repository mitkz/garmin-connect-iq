# GARMIN CONNECT IQ

My Garmin Connect IQ Project in one single repository


## Download apps

Download my apps from [Connect IQ Store](https://apps.garmin.com/en-US/developer/8bd344a5-7e1a-4209-a851-c099d2dff514/apps)
using [Garmin Express](https://www.garmin.com/en-US/software/express).


## Build apps on your own

Follow [Programmer's Guide](https://developer.garmin.com/connect-iq/overview/)
to setup your Windows or Mac.

- Download [Garmin Connect IQ SDK Manager](https://developer.garmin.com/connect-iq/sdk/)

- Use the SDK manager to download the latest Connect IQ SDK and devices

- Once the download completes, click Yes when prompted to use the new SDK version as your active SDK

- Close the SDK Manager

- Install `Eclipse IDE for Java Developers`

- In Eclipse, click the `Help` menu

- Choose `Install New Software...`

- Click the `Add...` button

- Add `https://developer.garmin.com/downloads/connect-iq/eclipse` to the Location field and click `Add`

- Check the box next to `Connect IQ` in the Available Software window and click `Next`

- Review the license agreement and click `Finish`

- Once the installation completes, restart Eclipse


## Upload apps on Connect IQ Store

https://apps.garmin.com/en-US/developer/dashboard


## Batch compiling via command line

Check `MONKEYC` path in `compile-batch.sh` file, then launch
`./compile-batch.sh`


## Command line guide

```sh
# Launch the simulator:
connectiq

# Compile the executable:
monkeyc -d fenix6pro \
    -f KeepCalmAndTriathlon/monkey.jungle \
    -o KeepCalmAndTriathlon.prg \
    -y $HOME/Downloads/developer_key.der

# Run in the simulator
monkeydo KeepCalmAndTriathlon.prg fenix6pro

# Compile for Publishing
monkeyc -e \
    -o KeepCalmAndTriathlon.iq \
    -w -f KeepCalmAndTriathlon/monkey.jungle \
    -y $HOME/Downloads/developer_key.der
```

## Cleanup

- Remove Garmin ConnectIQ directory, usually in `~/Library/Application Support/Garmin/ConnectIQ`

- Delete `Eclipse.app` from your `Applications`

- Delete `eclipse-workspace` from your home directory

    `rm -rf ~/eclipse-workspace`

- Remove Eclipse service files

    ```bash
    rm -rf ~/.eclipse
    rm -rf ~/Library/Caches/org.eclipse.platform.ide
    rm -rf ~/Library/Saved Application State/org.eclipse.platform.ide.savedState
    rm -rf ~/Library/Preferences/org.eclipse.platform.ide.plist
    ```