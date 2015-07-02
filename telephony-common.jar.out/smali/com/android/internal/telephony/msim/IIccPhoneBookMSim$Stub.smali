.class public abstract Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBookMSim.java"

# interfaces
.implements Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.msim.IIccPhoneBookMSim"

.field static final TRANSACTION_getAdnCount:I = 0xa

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsInEfOnSubscription:I = 0x5

.field static final TRANSACTION_getAdnRecordsSize:I = 0x4

.field static final TRANSACTION_getAdnRecordsSizeOnSubscription:I = 0x8

.field static final TRANSACTION_getIccRecordInfoEntry:I = 0xf

.field static final TRANSACTION_getSpareAnrCount:I = 0xd

.field static final TRANSACTION_getSpareEmailCount:I = 0xe

.field static final TRANSACTION_getUimLoaderStatus:I = 0xc

.field static final TRANSACTION_setUimLoaderStatus:I = 0xb

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x3

.field static final TRANSACTION_updateAdnRecordsInEfByIndexOnSubscription:I = 0x7

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x2

.field static final TRANSACTION_updateAdnRecordsInEfBySearchOnSubscription:I = 0x6

.field static final TRANSACTION_updateUsimAdnRecordsInEfByIndex:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    .locals 2
    .parameter "obj"

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 55
    :sswitch_0
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v10

    .line 64
    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    .end local v1           #_arg0:I
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_2
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 83
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 84
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 90
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_3
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 100
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg4:Ljava/lang/String;
    move-object v0, p0

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    .line 102
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v9, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 108
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_4
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnRecordsSize(I)[I

    move-result-object v9

    .line 112
    .local v9, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 114
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 118
    .end local v1           #_arg0:I
    .end local v9           #_result:[I
    :sswitch_5
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnRecordsInEfOnSubscription(II)Ljava/util/List;

    move-result-object v10

    .line 124
    .restart local v10       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 126
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 130
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_6
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 142
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 144
    .restart local v6       #_arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg6:I
    move-object v0, p0

    .line 145
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 146
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v9, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 147
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 152
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:I
    .end local v9           #_result:Z
    :sswitch_7
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 162
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 164
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 165
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfByIndexOnSubscription(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v9

    .line 166
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v9, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 167
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 172
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:I
    .end local v9           #_result:Z
    :sswitch_8
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnRecordsSizeOnSubscription(II)[I

    move-result-object v9

    .line 178
    .local v9, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 180
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 184
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v9           #_result:[I
    :sswitch_9
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, _arg4:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, _arg5:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 200
    .restart local v7       #_arg6:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg7:Ljava/lang/String;
    move-object v0, p0

    .line 201
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateUsimAdnRecordsInEfByIndex(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    .line 202
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v9, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 203
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 208
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:[Ljava/lang/String;
    .end local v6           #_arg5:[Ljava/lang/String;
    .end local v7           #_arg6:I
    .end local v8           #_arg7:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_a
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnCount(I)I

    move-result v9

    .line 212
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 218
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_b
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->setUimLoaderStatus(II)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 229
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_c
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getUimLoaderStatus(I)I

    move-result v9

    .line 233
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 239
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_d
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getSpareAnrCount(I)I

    move-result v9

    .line 243
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 249
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_e
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getSpareEmailCount(I)I

    move-result v9

    .line 253
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 259
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_f
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getIccRecordInfoEntry(I)Ljava/util/Map;

    move-result-object v9

    .line 263
    .local v9, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 265
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 51
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
