.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 308
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 309
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 310
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 314
    const/4 v7, 0x0

    .line 315
    .local v7, lookupUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 316
    .local v3, createUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 317
    .local v11, trigger:Z
    if-eqz p2, :cond_3

    check-cast p2, Landroid/os/Bundle;

    .end local p2
    move-object/from16 v4, p2

    .line 319
    .local v4, extras:Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 350
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 351
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v12, v7}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 356
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #calls: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v12}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 358
    if-eqz v11, :cond_5

    if-eqz v7, :cond_5

    .line 360
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v12}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v15, v15, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v12, v13, v7, v14, v15}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 386
    :cond_2
    :goto_2
    return-void

    .line 317
    .end local v4           #extras:Landroid/os/Bundle;
    .restart local p2
    :cond_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 321
    .end local p2
    .restart local v4       #extras:Landroid/os/Bundle;
    :pswitch_0
    const/4 v11, 0x1

    .line 322
    :try_start_0
    const-string/jumbo v12, "tel"

    const-string/jumbo v13, "uri_content"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 326
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 327
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 328
    .local v1, contactId:J
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, lookupKey:Ljava/lang/String;
    invoke-static {v1, v2, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 330
    goto :goto_1

    .line 335
    .end local v1           #contactId:J
    .end local v6           #lookupKey:Ljava/lang/String;
    :pswitch_2
    const/4 v11, 0x1

    .line 336
    const-string/jumbo v12, "mailto"

    const-string/jumbo v13, "uri_content"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 341
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 342
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 343
    .restart local v1       #contactId:J
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 344
    .restart local v6       #lookupKey:Ljava/lang/String;
    invoke-static {v1, v2, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    goto/16 :goto_1

    .line 350
    .end local v1           #contactId:J
    .end local v6           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v12

    if-eqz p3, :cond_4

    .line 351
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v12

    .line 362
    :cond_5
    if-eqz v3, :cond_2

    .line 363
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v9, quickIntent:Landroid/content/Intent;
    const-string/jumbo v12, "tel"

    const-string v13, "123456"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 366
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v12}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 367
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v12, 0x1

    invoke-virtual {v8, v9, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 370
    .local v10, receiverList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_6

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "tel"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    :cond_6
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "mailto"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 371
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v12}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v15, v15, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v12, v13, v3, v14, v15}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 376
    :cond_8
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v5, v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 377
    .local v5, intent:Landroid/content/Intent;
    if-eqz v4, :cond_9

    .line 378
    const-string/jumbo v12, "uri_content"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v5, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 381
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #invoke-virtual {v12}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    #move-result-object v12

    #invoke-virtual {v12, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {v12, v3}, Landroid/widget/QuickContactBadge$BaiduInjector;->showStrangeQuickContact(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V

    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .end local v5           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v12

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
