.class Lcom/android/server/am/ActivityManagerService$12$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$12;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$12;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$12;)V
    .locals 0
    .parameter

    .prologue
    .line 8195
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8197
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8198
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mDidUpdate:Z

    .line 8199
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8200
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$12;->val$doneReceivers:Ljava/util/ArrayList;

    #calls: Lcom/android/server/am/ActivityManagerService;->writeLastDonePreBootReceivers(Ljava/util/ArrayList;)V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$800(Ljava/util/ArrayList;)V

    .line 8201
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1040416

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 8204
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "systemReady goingCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$12;->val$goingCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8205
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$12;->val$goingCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 8206
    return-void

    .line 8199
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
