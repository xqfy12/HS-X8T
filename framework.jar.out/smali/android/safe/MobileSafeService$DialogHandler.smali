.class Landroid/safe/MobileSafeService$DialogHandler;
.super Landroid/os/Handler;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/safe/MobileSafeService;


# direct methods
.method public constructor <init>(Landroid/safe/MobileSafeService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    .line 109
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x3e8

    const/16 v5, 0x3ea

    .line 114
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 118
    .local v0, strs:[Ljava/lang/String;
    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    aget-object v4, v0, v4

    #calls: Landroid/safe/MobileSafeService;->showConfirmDialog(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Landroid/safe/MobileSafeService;->access$000(Landroid/safe/MobileSafeService;Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    const/16 v2, 0xa

    #setter for: Landroid/safe/MobileSafeService;->mCount:I
    invoke-static {v1, v2}, Landroid/safe/MobileSafeService;->access$102(Landroid/safe/MobileSafeService;I)I

    .line 120
    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    #getter for: Landroid/safe/MobileSafeService;->mHandler:Landroid/safe/MobileSafeService$DialogHandler;
    invoke-static {v1}, Landroid/safe/MobileSafeService;->access$200(Landroid/safe/MobileSafeService;)Landroid/safe/MobileSafeService$DialogHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/safe/MobileSafeService$DialogHandler;->removeMessages(I)V

    .line 121
    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    #getter for: Landroid/safe/MobileSafeService;->mHandler:Landroid/safe/MobileSafeService$DialogHandler;
    invoke-static {v1}, Landroid/safe/MobileSafeService;->access$200(Landroid/safe/MobileSafeService;)Landroid/safe/MobileSafeService$DialogHandler;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v7}, Landroid/safe/MobileSafeService$DialogHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 125
    .end local v0           #strs:[Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    #getter for: Landroid/safe/MobileSafeService;->mHandler:Landroid/safe/MobileSafeService$DialogHandler;
    invoke-static {v1}, Landroid/safe/MobileSafeService;->access$200(Landroid/safe/MobileSafeService;)Landroid/safe/MobileSafeService$DialogHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/safe/MobileSafeService$DialogHandler;->removeMessages(I)V

    .line 126
    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    #calls: Landroid/safe/MobileSafeService;->dismissConfirmDialog()V
    invoke-static {v1}, Landroid/safe/MobileSafeService;->access$300(Landroid/safe/MobileSafeService;)V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    #getter for: Landroid/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Landroid/safe/MobileSafeService;->access$400(Landroid/safe/MobileSafeService;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    #getter for: Landroid/safe/MobileSafeService;->mCount:I
    invoke-static {v1}, Landroid/safe/MobileSafeService;->access$100(Landroid/safe/MobileSafeService;)I

    move-result v1

    if-lez v1, :cond_0

    .line 131
    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    #getter for: Landroid/safe/MobileSafeService;->mHandler:Landroid/safe/MobileSafeService$DialogHandler;
    invoke-static {v1}, Landroid/safe/MobileSafeService;->access$200(Landroid/safe/MobileSafeService;)Landroid/safe/MobileSafeService$DialogHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/safe/MobileSafeService$DialogHandler;->removeMessages(I)V

    .line 132
    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    #getter for: Landroid/safe/MobileSafeService;->mHandler:Landroid/safe/MobileSafeService$DialogHandler;
    invoke-static {v1}, Landroid/safe/MobileSafeService;->access$200(Landroid/safe/MobileSafeService;)Landroid/safe/MobileSafeService$DialogHandler;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v7}, Landroid/safe/MobileSafeService$DialogHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    invoke-static {v1}, Landroid/safe/MobileSafeService;->access$110(Landroid/safe/MobileSafeService;)I

    .line 134
    iget-object v1, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    #getter for: Landroid/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Landroid/safe/MobileSafeService;->access$400(Landroid/safe/MobileSafeService;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    iget-object v3, p0, Landroid/safe/MobileSafeService$DialogHandler;->this$0:Landroid/safe/MobileSafeService;

    #getter for: Landroid/safe/MobileSafeService;->mCount:I
    invoke-static {v3}, Landroid/safe/MobileSafeService;->access$100(Landroid/safe/MobileSafeService;)I

    move-result v3

    #calls: Landroid/safe/MobileSafeService;->getNegativeButtonText(I)Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/safe/MobileSafeService;->access$500(Landroid/safe/MobileSafeService;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
