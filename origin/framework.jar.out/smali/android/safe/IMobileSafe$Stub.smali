.class public abstract Landroid/safe/IMobileSafe$Stub;
.super Landroid/os/Binder;
.source "IMobileSafe.java"

# interfaces
.implements Landroid/safe/IMobileSafe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safe/IMobileSafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safe/IMobileSafe$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.safe.IMobileSafe"

.field static final TRANSACTION_checkPermission:I = 0x1

.field static final TRANSACTION_checkUidPermission:I = 0x2

.field static final TRANSACTION_checkUidPermissionEx:I = 0x3

.field static final TRANSACTION_deleteXml:I = 0x6

.field static final TRANSACTION_grantPermission:I = 0x4

.field static final TRANSACTION_queryPermissionsByUid:I = 0x8

.field static final TRANSACTION_registerClient:I = 0x7

.field static final TRANSACTION_revokePermission:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.safe.IMobileSafe"

    invoke-virtual {p0, p0, v0}, Landroid/safe/IMobileSafe$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafe;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.safe.IMobileSafe"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/safe/IMobileSafe;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/safe/IMobileSafe;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/safe/IMobileSafe$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/safe/IMobileSafe$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v7, "android.safe.IMobileSafe"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "android.safe.IMobileSafe"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/safe/IMobileSafe$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 53
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_2
    const-string v7, "android.safe.IMobileSafe"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/safe/IMobileSafe$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    .line 65
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_3
    const-string v7, "android.safe.IMobileSafe"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 83
    .local v2, _arg2:Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/safe/IMobileSafe$Stub;->checkUidPermissionEx(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v4

    .line 84
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v2           #_arg2:Landroid/os/Bundle;
    .end local v4           #_result:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_1

    .line 90
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/os/Bundle;
    :sswitch_4
    const-string v7, "android.safe.IMobileSafe"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/safe/IMobileSafe$Stub;->grantPermission(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_5
    const-string v8, "android.safe.IMobileSafe"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v2, v6

    .line 109
    .local v2, _arg2:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v3, v6

    .line 110
    .local v3, _arg3:Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/safe/IMobileSafe$Stub;->revokePermission(Ljava/lang/String;IZZ)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg2:Z
    .end local v3           #_arg3:Z
    :cond_1
    move v2, v7

    .line 107
    goto :goto_2

    .restart local v2       #_arg2:Z
    :cond_2
    move v3, v7

    .line 109
    goto :goto_3

    .line 116
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Z
    :sswitch_6
    const-string v7, "android.safe.IMobileSafe"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/safe/IMobileSafe$Stub;->deleteXml(I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 125
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v7, "android.safe.IMobileSafe"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/safe/IMobileSafeClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafeClient;

    move-result-object v0

    .line 128
    .local v0, _arg0:Landroid/safe/IMobileSafeClient;
    invoke-virtual {p0, v0}, Landroid/safe/IMobileSafe$Stub;->registerClient(Landroid/safe/IMobileSafeClient;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    .end local v0           #_arg0:Landroid/safe/IMobileSafeClient;
    :sswitch_8
    const-string v7, "android.safe.IMobileSafe"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/safe/IMobileSafe$Stub;->queryPermissionsByUid(I)Ljava/util/List;

    move-result-object v5

    .line 138
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/safe/Permission;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
