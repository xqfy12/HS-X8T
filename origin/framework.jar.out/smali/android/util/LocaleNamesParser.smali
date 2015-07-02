.class public final Landroid/util/LocaleNamesParser;
.super Ljava/lang/Object;
.source "LocaleNamesParser.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "LocaleNamesParser"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocaleNamesId:I

.field private mNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginNamesId:I

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .parameter "context"
    .parameter "tag"
    .parameter "originNamesId"
    .parameter "localeNamesId"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/LocaleNamesParser;->mNames:Ljava/util/HashMap;

    .line 58
    iput-object p2, p0, Landroid/util/LocaleNamesParser;->mTag:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Landroid/util/LocaleNamesParser;->mContext:Landroid/content/Context;

    .line 60
    iput p3, p0, Landroid/util/LocaleNamesParser;->mOriginNamesId:I

    .line 61
    iput p4, p0, Landroid/util/LocaleNamesParser;->mLocaleNamesId:I

    .line 62
    invoke-virtual {p0}, Landroid/util/LocaleNamesParser;->reload()V

    .line 63
    return-void
.end method


# virtual methods
.method public getLocaleName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "name"

    .prologue
    .line 82
    const/4 v2, 0x0

    .line 85
    .local v2, locale:Ljava/lang/Integer;
    iget-object v4, p0, Landroid/util/LocaleNamesParser;->mNames:Ljava/util/HashMap;

    monitor-enter v4

    .line 86
    :try_start_0
    iget-object v3, p0, Landroid/util/LocaleNamesParser;->mNames:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eqz v2, :cond_0

    .line 89
    :try_start_1
    iget-object v3, p0, Landroid/util/LocaleNamesParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    .line 98
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    const-string v3, "LocaleNamesParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " actually name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object p1

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    const-string v3, "LocaleNamesParser"

    const-string v5, "Resource not found"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 96
    :cond_0
    :try_start_4
    const-string v3, "LocaleNamesParser"

    const-string v5, "locale is null"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized reload()V
    .locals 8

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/util/LocaleNamesParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 71
    .local v4, res:Landroid/content/res/Resources;
    iget v5, p0, Landroid/util/LocaleNamesParser;->mOriginNamesId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, origNames:[Ljava/lang/String;
    iget v5, p0, Landroid/util/LocaleNamesParser;->mLocaleNamesId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, localeNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 74
    .local v1, localeId:Ljava/lang/Integer;
    iget-object v5, p0, Landroid/util/LocaleNamesParser;->mNames:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 76
    new-instance v1, Ljava/lang/Integer;

    .end local v1           #localeId:Ljava/lang/Integer;
    aget-object v5, v2, v0

    const-string/jumbo v6, "string"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 77
    .restart local v1       #localeId:Ljava/lang/Integer;
    iget-object v5, p0, Landroid/util/LocaleNamesParser;->mNames:Ljava/util/HashMap;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    .end local v0           #i:I
    .end local v1           #localeId:Ljava/lang/Integer;
    .end local v2           #localeNames:[Ljava/lang/String;
    .end local v3           #origNames:[Ljava/lang/String;
    .end local v4           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
