.class public Lcom/android/internal/app/PrimaryStorageAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrimaryStorageAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final EVENT_REBOOT:I = 0x7c0

.field private static final KEY_OPERATOR_CODE:Ljava/lang/String; = "saved_remember_choice"

.field private static final NEGATIVE:I = -0x2

.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PrimaryStorageAlertActivity"


# instance fields
.field private DEBUG:Z

.field private mOkButton:Landroid/widget/Button;

.field private mRebootHandler:Landroid/os/Handler;

.field private mRememberChoice:Landroid/widget/CheckBox;

.field private mRememberChoiceValue:Z

.field private mStatus:Ljava/lang/String;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoiceValue:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->DEBUG:Z

    .line 73
    new-instance v0, Lcom/android/internal/app/PrimaryStorageAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PrimaryStorageAlertActivity$1;-><init>(Lcom/android/internal/app/PrimaryStorageAlertActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Lcom/android/internal/app/PrimaryStorageAlertActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PrimaryStorageAlertActivity$3;-><init>(Lcom/android/internal/app/PrimaryStorageAlertActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRebootHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/PrimaryStorageAlertActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/PrimaryStorageAlertActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoiceValue:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/app/PrimaryStorageAlertActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoiceValue:Z

    return p1
.end method

.method private createDialogView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x10900ad

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mView:Landroid/view/View;

    .line 129
    iget-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mView:Landroid/view/View;

    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->messageView:Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->messageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->createDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mView:Landroid/view/View;

    const v4, 0x1020346

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoice:Landroid/widget/CheckBox;

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "rememer_choice"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, value:I
    if-ne v0, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoiceValue:Z

    .line 135
    iget-boolean v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PrimaryStorageAlertActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ro.hmct.sdcard.change createDialogView mRememberChoiceValue "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoiceValue:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const-string v1, "changed2sd"

    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "changed2internal"

    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoice:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 147
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoice:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/internal/app/PrimaryStorageAlertActivity$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/PrimaryStorageAlertActivity$2;-><init>(Lcom/android/internal/app/PrimaryStorageAlertActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    iget-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mView:Landroid/view/View;

    return-object v1

    :cond_2
    move v1, v3

    .line 134
    goto :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoice:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoice:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoiceValue:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private createDisplayText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "status"

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, mMessage1:Ljava/lang/String;
    const-string v1, "inserted"

    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const v1, 0x1040596

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    const-string/jumbo v1, "removed"

    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const v1, 0x1040595

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_2
    const-string v1, "changed2sd"

    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    const v1, 0x1040598

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_3
    const-string v1, "changed2internal"

    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const v1, 0x1040597

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 183
    const/4 v1, -0x1

    if-ne p2, v1, :cond_9

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SDCARD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, status:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PrimaryStorageAlertActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ro.hmct.sdcard.change----onClick--Pbutton- sdcard status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    const-string/jumbo v1, "removed"

    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "sd"

    invoke-static {}, Landroid/os/Environment;->getCurrentPrimaryStorage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    const-string v1, "PrimaryStorageAlertActivity"

    const-string/jumbo v2, "ro.hmct.sdcard.change----change to internal "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string/jumbo v1, "ro.monkey"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    const-string v1, "PrimaryStorageAlertActivity"

    const-string/jumbo v2, "ro.hmct.sdcard.change----not change to internal when monkey test"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRebootHandler:Landroid/os/Handler;

    const/16 v2, 0x7c0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 226
    .end local v0           #status:Ljava/lang/String;
    :goto_1
    return-void

    .line 191
    .restart local v0       #status:Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "persist.sys.hmct.primary.st"

    const-string v2, "internal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_3
    const-string v1, "inserted"

    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "internal"

    invoke-static {}, Landroid/os/Environment;->getCurrentPrimaryStorage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    const-string v1, "PrimaryStorageAlertActivity"

    const-string/jumbo v2, "ro.hmct.sdcard.change----change to sd "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string/jumbo v1, "ro.monkey"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    const-string v1, "PrimaryStorageAlertActivity"

    const-string/jumbo v2, "ro.hmct.sdcard.change----not change to sd when monkey test"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_4
    const-string/jumbo v1, "persist.sys.hmct.primary.st"

    const-string/jumbo v2, "sd"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_5
    const-string v1, "changed2sd"

    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "internal"

    invoke-static {}, Landroid/os/Environment;->getCurrentPrimaryStorage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 203
    const-string v1, "PrimaryStorageAlertActivity"

    const-string/jumbo v2, "ro.hmct.sdcard.change----change to sd "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string/jumbo v1, "ro.monkey"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 205
    const-string v1, "PrimaryStorageAlertActivity"

    const-string/jumbo v2, "ro.hmct.sdcard.change----not change to sd when monkey test"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_6
    const-string/jumbo v1, "persist.sys.hmct.primary.st"

    const-string/jumbo v2, "sd"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :cond_7
    const-string v1, "changed2internal"

    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sd"

    invoke-static {}, Landroid/os/Environment;->getCurrentPrimaryStorage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "PrimaryStorageAlertActivity"

    const-string/jumbo v2, "ro.hmct.sdcard.change----change to internal "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string/jumbo v1, "ro.monkey"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 213
    const-string v1, "PrimaryStorageAlertActivity"

    const-string/jumbo v2, "ro.hmct.sdcard.change----not change to internal when monkey test"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    :cond_8
    const-string/jumbo v1, "persist.sys.hmct.primary.st"

    const-string v2, "internal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .end local v0           #status:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->finish()V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SDCARD"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    .line 87
    iget-boolean v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PrimaryStorageAlertActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ro.hmct.sdcard.change--- onCreate ,get sdcard status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 91
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108008a

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 92
    const v2, 0x1040590

    invoke-virtual {p0, v2}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 93
    invoke-direct {p0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->createDialogView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 94
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 95
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 97
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->setupAlert()V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 167
    iget-boolean v0, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PrimaryStorageAlertActivity"

    const-string/jumbo v1, "ro.hmct.sdcard.change onResume "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    return-void
.end method
