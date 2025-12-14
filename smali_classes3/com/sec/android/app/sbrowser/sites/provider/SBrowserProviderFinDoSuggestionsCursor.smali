.class public Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# static fields
.field private static final COLS:[Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "bookmark"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_ICON_1_BLOB:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "suggest_intent_action"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "suggest_intent_data"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "suggest_text_1"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "suggest_text_2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "suggest_icon_1"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "suggest_last_access_hint"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_MIME_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_GROUP:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_TARGET_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "FinDoSuggestionsCursor"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->COLS:[Ljava/lang/String;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    return p0
.end method

.method public getDouble(I)D
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getFloat(I)F
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getInt(I)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getLong(I)J
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string p1, "bookmark"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getShort(I)S
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4

    const-string v0, "title"

    const-string v1, "SUGGEST_COLUMN_GROUP"

    const-string v2, "url"

    const-string v3, ""

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_0
    const-string v3, "sFinderurl"

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_2
    const-string v3, "text/plain"

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string p1, "date"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const-string v3, "0"

    goto/16 :goto_0

    :cond_1
    invoke-static {p0, p1, v3}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14027f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f08054d

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const p0, 0x7f08054e

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "FinDoSuggestionsCursor"

    const-string p1, "Folder intent action"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.intent.action.SFINDER"

    goto :goto_0

    :cond_3
    const-string v3, "android.intent.action.VIEW"

    :cond_4
    :goto_0
    return-object v3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getType(I)I
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x4

    :cond_1
    return p0
.end method

.method public isNull(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    return p0
.end method

.method public onMove(II)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method
