.class public Lcom/android/server/content/SyncStorageEngine$PendingOperation;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingOperation"
.end annotation


# instance fields
.field final account:Landroid/accounts/Account;

.field final authority:Ljava/lang/String;

.field authorityId:I

.field final expedited:Z

.field final extras:Landroid/os/Bundle;

.field flatExtras:[B

.field final reason:I

.field final syncSource:I

.field final userId:I


# direct methods
.method constructor <init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "account"
    .parameter "userId"
    .parameter "reason"
    .parameter "source"
    .parameter "authority"
    .parameter "extras"
    .parameter "expedited"

    .prologue
    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    .line 172
    iput p2, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    .line 173
    iput p4, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 174
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    .line 175
    iput-object p5, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    .line 176
    if-eqz p6, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p6, v0

    .end local p6
    :cond_0
    iput-object p6, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 177
    iput-boolean p7, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 179
    return-void
.end method

.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    .line 183
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    .line 184
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    .line 185
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 186
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 188
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 189
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    .line 190
    return-void
.end method