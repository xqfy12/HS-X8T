.class Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo$1;
.super Landroid/database/ContentObserver;
.source "KeyguardUnreadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->updateMissedCallInfo()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->updateUnreadMessageInfo()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUnreadInfo;)V

    .line 106
    return-void
.end method
