.class public Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;
.super Ljava/lang/Object;
.source "DebugLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/DebugLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineNumber"
.end annotation


# static fields
.field private static final ERR_ID_DEPTH:I = -0x64

.field private static final ERR_STR_DEPTH:Ljava/lang/String; = "depth is error."

.field private static final baseDepth:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getAll(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAll(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 29
    const/4 v0, -0x4

    if-ge p0, v0, :cond_0

    .line 30
    const-string v0, "depth is error."

    .line 33
    :goto_0
    return-object v0

    .line 31
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 32
    const-string v0, "depth is error."

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getLineNumber(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getClassName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getMethodName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getClassLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getClassLongName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClassLongName(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 54
    const-string v0, "depth is error."

    .line 57
    :goto_0
    return-object v0

    .line 55
    :cond_0
    const/4 v0, -0x4

    if-ge p0, v0, :cond_1

    .line 56
    const-string v0, "depth is error."

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    add-int/lit8 v1, p0, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getClassName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClassName(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    .line 69
    const/4 v2, -0x4

    if-ge p0, v2, :cond_0

    .line 70
    const-string v2, "depth is error."

    .line 79
    :goto_0
    return-object v2

    .line 71
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v2, v2

    if-lt p0, v2, :cond_1

    .line 72
    const-string v2, "depth is error."

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    add-int/lit8 v3, p0, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, tmp:Ljava/lang/String;
    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, start:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 77
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 79
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getFileName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileName(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 91
    const/4 v0, -0x3

    if-ge p0, v0, :cond_0

    .line 92
    const-string v0, "depth is error."

    .line 95
    :goto_0
    return-object v0

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 94
    const-string v0, "depth is error."

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    add-int/lit8 v1, p0, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileNameAndLineNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getFileNameAndLineNo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileNameAndLineNo(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 107
    const/4 v0, -0x4

    if-ge p0, v0, :cond_0

    .line 108
    const-string v0, "depth is error."

    .line 111
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 110
    const-string v0, "depth is error."

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getLineNumber(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLineNumber()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getLineNumber(I)I

    move-result v0

    return v0
.end method

.method public static getLineNumber(I)I
    .locals 2
    .parameter "depth"

    .prologue
    const/16 v0, -0x64

    .line 127
    const/4 v1, -0x4

    if-ge p0, v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    add-int/lit8 v1, p0, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    goto :goto_0
.end method

.method public static getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/DebugLog$LineNumber;->getMethodName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodName(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 143
    const/4 v0, -0x4

    if-ge p0, v0, :cond_0

    .line 144
    const-string v0, "depth is error."

    .line 147
    :goto_0
    return-object v0

    .line 145
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 146
    const-string v0, "depth is error."

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    add-int/lit8 v1, p0, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
