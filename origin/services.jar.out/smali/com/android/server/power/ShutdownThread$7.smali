.class Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;J[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$7;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 590
    const-string v10, "ShutdownThread"

    const-string v11, "task run"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v10, "nfc"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v4

    .line 593
    .local v4, nfc:Landroid/nfc/INfcAdapter;
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 595
    .local v6, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v10, "bluetooth_manager"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 598
    .local v0, bluetooth:Landroid/bluetooth/IBluetoothManager;
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off NFC"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v3, 0x0

    .line 600
    .local v3, mTelephonyHmctPt:Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;
    if-nez v3, :cond_0

    .line 601
    const-class v10, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/hmct/common/HmctClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mTelephonyHmctPt:Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;
    check-cast v3, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;

    .line 606
    .restart local v3       #mTelephonyHmctPt:Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;
    :cond_0
    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v10

    if-ne v10, v9, :cond_a

    :cond_1
    move v5, v9

    .line 608
    .local v5, nfcOff:Z
    :goto_0
    if-nez v5, :cond_2

    .line 609
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off NFC..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_2
    :goto_1
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off BT"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_b

    :cond_3
    move v1, v9

    .line 620
    .local v1, bluetoothOff:Z
    :goto_2
    if-nez v1, :cond_4

    .line 621
    const-string v10, "ShutdownThread"

    const-string v11, "Disabling Bluetooth..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 631
    :cond_4
    :goto_3
    :try_start_2
    const-string v10, "qualcomm"

    invoke-interface {v3}, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;->getPlatform()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 632
    const/4 v7, 0x1

    .line 633
    .local v7, radioOff:Z
    const-string v10, "ShutdownThread"

    const-string v11, "This is qualcomm"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-interface {v3}, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;->isMultiSimEnabled()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 649
    invoke-interface {v3}, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;->shutRadio()Z

    move-result v7

    .line 653
    :goto_4
    if-nez v7, :cond_5

    .line 654
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v10, 0x0

    invoke-interface {v6, v10}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 679
    :cond_5
    :goto_5
    const-string v10, "ShutdownThread"

    const-string v11, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/power/ShutdownThread$7;->val$endTime:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_9

    .line 682
    if-nez v1, :cond_6

    .line 684
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v10

    if-nez v10, :cond_12

    move v1, v9

    .line 689
    :goto_7
    if-eqz v1, :cond_6

    .line 690
    const-string v10, "ShutdownThread"

    const-string v11, "Bluetooth turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_6
    if-nez v7, :cond_7

    .line 696
    :try_start_4
    invoke-interface {v3}, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;->isMultiSimEnabled()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 704
    invoke-interface {v3}, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;->isRadioOnOff()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    .line 712
    :goto_8
    if-eqz v7, :cond_7

    .line 713
    const-string v10, "ShutdownThread"

    const-string v11, "Radio turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_7
    if-nez v5, :cond_8

    .line 718
    :try_start_5
    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v10

    if-ne v10, v9, :cond_15

    move v5, v9

    .line 723
    :goto_9
    if-eqz v5, :cond_8

    .line 724
    const-string v10, "ShutdownThread"

    const-string v11, "NFC turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_8
    if-eqz v7, :cond_16

    if-eqz v1, :cond_16

    if-eqz v5, :cond_16

    .line 729
    const-string v10, "ShutdownThread"

    const-string v11, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    aput-boolean v9, v10, v8

    .line 735
    :cond_9
    return-void

    .end local v1           #bluetoothOff:Z
    .end local v5           #nfcOff:Z
    .end local v7           #radioOff:Z
    :cond_a
    move v5, v8

    .line 606
    goto/16 :goto_0

    .line 612
    :catch_0
    move-exception v2

    .line 613
    .local v2, ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    const/4 v5, 0x1

    .restart local v5       #nfcOff:Z
    goto/16 :goto_1

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_b
    move v1, v8

    .line 619
    goto/16 :goto_2

    .line 624
    :catch_1
    move-exception v2

    .line 625
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    const/4 v1, 0x1

    .restart local v1       #bluetoothOff:Z
    goto/16 :goto_3

    .line 651
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v7       #radioOff:Z
    :cond_c
    if-eqz v6, :cond_d

    :try_start_6
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v10

    if-nez v10, :cond_e

    :cond_d
    move v7, v9

    :goto_a
    goto/16 :goto_4

    :cond_e
    move v7, v8

    goto :goto_a

    .line 658
    .end local v7           #radioOff:Z
    :cond_f
    if-eqz v6, :cond_10

    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v10

    if-nez v10, :cond_11

    :cond_10
    move v7, v9

    .line 666
    .restart local v7       #radioOff:Z
    :goto_b
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-interface {v3}, Lcom/hmct/common/telephony/ITelephonyManagerHmctPt;->setRadioOffMy()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_5

    .line 674
    .end local v7           #radioOff:Z
    :catch_2
    move-exception v2

    .line 675
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    const/4 v7, 0x1

    .restart local v7       #radioOff:Z
    goto/16 :goto_5

    .end local v2           #ex:Landroid/os/RemoteException;
    .end local v7           #radioOff:Z
    :cond_11
    move v7, v8

    .line 658
    goto :goto_b

    .restart local v7       #radioOff:Z
    :cond_12
    move v1, v8

    .line 684
    goto/16 :goto_7

    .line 685
    :catch_3
    move-exception v2

    .line 686
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 706
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_13
    :try_start_7
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    move-result v10

    if-nez v10, :cond_14

    move v7, v9

    :goto_c
    goto/16 :goto_8

    :cond_14
    move v7, v8

    goto :goto_c

    .line 708
    :catch_4
    move-exception v2

    .line 709
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    const/4 v7, 0x1

    goto/16 :goto_8

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_15
    move v5, v8

    .line 718
    goto/16 :goto_9

    .line 719
    :catch_5
    move-exception v2

    .line 720
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    const/4 v5, 0x1

    goto/16 :goto_9

    .line 733
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_16
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_6
.end method
