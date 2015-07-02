.class public Lcom/android/internal/policy/impl/keyguard/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/DebugLog$LineNumber;
    }
.end annotation


# static fields
.field private static final ATPOS:Ljava/lang/String; = "\tat "

.field private static final Depth:I = 0x1

.field private static final METHOD_BEGIN:Ljava/lang/String; = "begin."

.field private static final METHOD_END:Ljava/lang/String; = "end."

.field private static final SHOWSTACK_BEGIN:Ljava/lang/String; = "===============Stack show begin=============="

.field private static final SHOWSTACK_END:Ljava/lang/String; = "=============== Stack show end =============="

.field private static final STR_FORMAT:Ljava/lang/String; = "%-128s%s"

.field private static ShowAll:Z = false

.field private static final bDebug:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/DebugLog;->ShowAll:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 334
    return-void
.end method

.method public static MethodBegin(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 218
    const-string v0, "begin."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->MethodOut(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    return-void
.end method

.method public static MethodEnd(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 224
    const-string v0, "end."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->MethodOut(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    return-void
.end method

.method public static MethodOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->MethodOut(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    return-void
.end method

.method private static MethodOut(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "tag"
    .parameter "msg"
    .parameter "depth"

    .prologue
    .line 238
    const/4 v0, -0x3

    if-ge p2, v0, :cond_0

    .line 240
    const-string v0, "depth is error."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 243
    :cond_0
    if-nez p0, :cond_1

    .line 245
    const-string p0, ""

    .line 247
    :cond_1
    const-string v0, "%-128s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/DebugLog$LineNumber;->getAll(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/DebugLog$LineNumber;->getFileNameAndLineNo(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->handlAtMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static ShowAllStack(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 294
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/DebugLog;->ShowAll:Z

    .line 295
    const/4 v0, -0x5

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->ShowStack(Ljava/lang/String;I)V

    .line 296
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/DebugLog;->ShowAll:Z

    .line 298
    return-void
.end method

.method public static ShowStack(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    const/4 v0, 0x1

    .line 283
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/DebugLog;->ShowAll:Z

    .line 284
    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->ShowStack(Ljava/lang/String;I)V

    .line 285
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/DebugLog;->ShowAll:Z

    .line 287
    return-void
.end method

.method public static ShowStack(Ljava/lang/String;I)V
    .locals 12
    .parameter "tag"
    .parameter "depth"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 305
    if-nez p0, :cond_0

    .line 307
    const-string p0, ""

    .line 309
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v0, v4, -0x3

    .line 310
    .local v0, AllDepth:I
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v7, "===============Stack show begin=============="

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 312
    .local v2, outStrBuff:Ljava/lang/StringBuffer;
    add-int/lit8 v1, p1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 314
    const-string v7, "%-128s%s"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "%02d"

    new-array v11, v5, [Ljava/lang/Object;

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/DebugLog;->ShowAll:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v9, v1, 0x1

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/DebugLog$LineNumber;->getAll(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/DebugLog$LineNumber;->getFileNameAndLineNo(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->handlAtMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #str:Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 314
    goto :goto_1

    .line 326
    :cond_2
    const-string v4, "=============== Stack show end =============="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 198
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->handlMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 174
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->handlMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method private static handlAtMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pos"

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\tat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, outString:Ljava/lang/StringBuffer;
    const-string v1, "\\["

    const-string v2, "\\("

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\]"

    const-string v3, "\\)"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static handlMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    .line 259
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/DebugLog$LineNumber;->getFileNameAndLineNo(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, pos:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, outString:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    const-string v2, "%-128s%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->handlAtMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 205
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->handlMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 212
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->handlMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 191
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/DebugLog;->handlMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method
