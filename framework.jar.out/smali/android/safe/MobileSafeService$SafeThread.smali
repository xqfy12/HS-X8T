.class Landroid/safe/MobileSafeService$SafeThread;
.super Ljava/lang/Thread;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SafeThread"
.end annotation


# instance fields
.field private client:Ljava/net/Socket;

.field private in:Ljava/io/BufferedReader;

.field private out:Ljava/io/PrintWriter;

.field private serverSocket:Ljava/net/ServerSocket;

.field final synthetic this$0:Landroid/safe/MobileSafeService;


# direct methods
.method private constructor <init>(Landroid/safe/MobileSafeService;)V
    .locals 0
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Landroid/safe/MobileSafeService$SafeThread;->this$0:Landroid/safe/MobileSafeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 654
    :try_start_0
    new-instance v5, Ljava/net/ServerSocket;

    const/16 v6, 0x2719

    invoke-direct {v5, v6}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->serverSocket:Ljava/net/ServerSocket;

    .line 658
    :goto_0
    iget-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5

    iput-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->client:Ljava/net/Socket;

    .line 659
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Landroid/safe/MobileSafeService$SafeThread;->client:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->in:Ljava/io/BufferedReader;

    .line 660
    iget-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->in:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, str:Ljava/lang/String;
    const-string/jumbo v5, "wxgmms"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, results:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 664
    .local v0, checkPerm:I
    const/4 v4, -0x1

    .line 666
    .local v4, uid:I
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string/jumbo v6, "sendmms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 668
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 671
    :goto_1
    if-lez v4, :cond_0

    .line 672
    :try_start_2
    iget-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->this$0:Landroid/safe/MobileSafeService;

    const-string v6, "android.permission.SEND_MMS"

    invoke-virtual {v5, v6, v4}, Landroid/safe/MobileSafeService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    .line 676
    :cond_0
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    iget-object v8, p0, Landroid/safe/MobileSafeService$SafeThread;->client:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->out:Ljava/io/PrintWriter;

    .line 677
    if-nez v0, :cond_1

    .line 678
    iget-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->out:Ljava/io/PrintWriter;

    const-string v6, "grant"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 683
    .end local v0           #checkPerm:I
    .end local v2           #results:[Ljava/lang/String;
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #uid:I
    :catch_0
    move-exception v1

    .line 684
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 687
    :try_start_4
    iget-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->in:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 688
    iget-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->out:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 689
    iget-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->client:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 694
    .end local v1           #ex:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 680
    .restart local v0       #checkPerm:I
    .restart local v2       #results:[Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    .restart local v4       #uid:I
    :cond_1
    :try_start_5
    iget-object v5, p0, Landroid/safe/MobileSafeService$SafeThread;->out:Ljava/io/PrintWriter;

    const-string v6, "deny"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 686
    .end local v0           #checkPerm:I
    .end local v2           #results:[Ljava/lang/String;
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #uid:I
    :catchall_0
    move-exception v5

    .line 687
    :try_start_6
    iget-object v6, p0, Landroid/safe/MobileSafeService$SafeThread;->in:Ljava/io/BufferedReader;

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 688
    iget-object v6, p0, Landroid/safe/MobileSafeService$SafeThread;->out:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 689
    iget-object v6, p0, Landroid/safe/MobileSafeService$SafeThread;->client:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 692
    :goto_3
    throw v5

    .line 690
    .restart local v1       #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 691
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 690
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 691
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 669
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #checkPerm:I
    .restart local v2       #results:[Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    .restart local v4       #uid:I
    :catch_3
    move-exception v5

    goto :goto_1
.end method
