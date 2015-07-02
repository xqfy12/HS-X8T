.class Lcom/android/internal/app/PrimaryStorageAlertActivity$2;
.super Ljava/lang/Object;
.source "PrimaryStorageAlertActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PrimaryStorageAlertActivity;->createDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PrimaryStorageAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$2;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    if-eqz p2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$2;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    #setter for: Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoiceValue:Z
    invoke-static {v2, v0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->access$102(Lcom/android/internal/app/PrimaryStorageAlertActivity;Z)Z

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$2;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "rememer_choice"

    iget-object v4, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$2;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    #getter for: Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoiceValue:Z
    invoke-static {v4}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->access$100(Lcom/android/internal/app/PrimaryStorageAlertActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    iget-object v0, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$2;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    #getter for: Lcom/android/internal/app/PrimaryStorageAlertActivity;->DEBUG:Z
    invoke-static {v0}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->access$000(Lcom/android/internal/app/PrimaryStorageAlertActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PrimaryStorageAlertActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.hmct.sdcard.change after mRememberChoiceValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$2;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    #getter for: Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoiceValue:Z
    invoke-static {v2}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->access$100(Lcom/android/internal/app/PrimaryStorageAlertActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/PrimaryStorageAlertActivity$2;->this$0:Lcom/android/internal/app/PrimaryStorageAlertActivity;

    #setter for: Lcom/android/internal/app/PrimaryStorageAlertActivity;->mRememberChoiceValue:Z
    invoke-static {v2, v1}, Lcom/android/internal/app/PrimaryStorageAlertActivity;->access$102(Lcom/android/internal/app/PrimaryStorageAlertActivity;Z)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 155
    goto :goto_1
.end method
