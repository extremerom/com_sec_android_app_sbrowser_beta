.class public final Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 :2\u00020\u00012\u00020\u00012\u00020\u00012\u00020\u00012\u00020\u00012\u00020\u00012\u00020\u00012\u00020\u00012\u00020\u0001:\u0001:B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J \u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0096@\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J,\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0096@\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ \u0010 \u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001eH\u0096@\u00a2\u0006\u0004\u0008 \u0010!J&\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"H\u0096@\u00a2\u0006\u0004\u0008$\u0010%J \u0010(\u001a\u00020\'2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u001aH\u0096@\u00a2\u0006\u0004\u0008(\u0010)J&\u0010-\u001a\u0008\u0012\u0004\u0012\u00020,0\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010+\u001a\u00020*H\u0096@\u00a2\u0006\u0004\u0008-\u0010.J \u00101\u001a\u00020\'2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00100\u001a\u00020/H\u0096@\u00a2\u0006\u0004\u00081\u00102J&\u00106\u001a\u0008\u0012\u0004\u0012\u0002050\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00104\u001a\u000203H\u0096@\u00a2\u0006\u0004\u00086\u00107J \u00109\u001a\u00020\'2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u001aH\u0096@\u00a2\u0006\u0004\u00089\u0010)\u00a8\u0006;"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;",
        "",
        "<init>",
        "()V",
        "Lz4/a;",
        "appFunctionContext",
        "Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;",
        "getCrossAppActionBookmarkModel",
        "(Lz4/a;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;",
        "Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;",
        "time",
        "",
        "getEpochTime",
        "(Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;)J",
        "",
        "receivedCount",
        "reviseMaxCount",
        "(I)I",
        "Ldb/r;",
        "checkSecretModeEnabled",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;",
        "createBookmarkParams",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;",
        "createBookmark",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;Lib/c;)Ljava/lang/Object;",
        "",
        "",
        "bookmarkIds",
        "deleteBookmarks",
        "(Lz4/a;Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;",
        "updateBookmarkParams",
        "updateBookmark",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;Lib/c;)Ljava/lang/Object;",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;",
        "findBookmarksParams",
        "findBookmarks",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;Lib/c;)Ljava/lang/Object;",
        "bookmarkId",
        "Landroid/app/PendingIntent;",
        "showBookmark",
        "(Lz4/a;Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;",
        "getHistoriesParams",
        "Lcom/google/android/appfunctions/schema/common/v1/types/Uri;",
        "getHistories",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;Lib/c;)Ljava/lang/Object;",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;",
        "showSiteParams",
        "showSite",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;Lib/c;)Ljava/lang/Object;",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;",
        "findTabsParams",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;",
        "findTabs",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;Lib/c;)Ljava/lang/Object;",
        "tabId",
        "showTab",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->Companion:Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkSecretModeEnabled()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isSecretModePreferenceEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lz4/d;

    const/16 v0, 0x3ea

    const-string v1, "Not supported in Secret Mode"

    invoke-direct {p0, v0, v1}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private final getCrossAppActionBookmarkModel(Lz4/a;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;

    check-cast p1, LA4/b;

    iget-object p1, p1, LA4/b;->a:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getCrossAppActionBookmarkModel$model$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getCrossAppActionBookmarkModel$model$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    return-object p0
.end method

.method private final getEpochTime(Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;)J
    .locals 9

    const-string p0, ":"

    const-string v0, "."

    :try_start_0
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;->d:Lcom/google/android/appfunctions/schema/common/v1/types/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;->d:Lcom/google/android/appfunctions/schema/common/v1/types/Date;

    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;->e:Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;

    :try_start_1
    iget v1, v1, Lcom/google/android/appfunctions/schema/common/v1/types/Date;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v3, "getInstance(...)"

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget v3, v2, Lcom/google/android/appfunctions/schema/common/v1/types/Date;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0x9

    const-string v6, "0"

    if-gt v4, v5, :cond_1

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget v2, v2, Lcom/google/android/appfunctions/schema/common/v1/types/Date;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v4, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget v4, p1, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gt v7, v5, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget v7, p1, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;->d:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-gt v8, v5, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    iget p1, p1, Lcom/google/android/appfunctions/schema/common/v1/types/TimeOfDay;->e:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-gt v8, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    const-string v5, "yyyy.MM.dd HH:mm:ss"

    invoke-static {v5}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    mul-long/2addr p0, v0

    return-wide p0

    :goto_1
    const-string p1, "error message : "

    const-string v0, "BrowserFunctions"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private final reviseMaxCount(I)I
    .locals 0

    const/16 p0, 0x1e

    if-le p1, p0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method


# virtual methods
.method public createBookmark(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;",
            "Lib/c<",
            "-",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "BrowserFunctions"

    const-string v0, "createBookmark"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->checkSecretModeEnabled()V

    iget-object p3, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;->c:Ljava/lang/String;

    invoke-static {p3}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p3, p3, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;->c:Ljava/lang/String;

    invoke-static {p3}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getCrossAppActionBookmarkModel(Lz4/a;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;

    move-result-object p0

    invoke-static {p3}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;->c:Ljava/lang/String;

    invoke-static {v0}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;->addCrossAppActionBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p1, LA4/b;

    iget-object p3, p1, LA4/b;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->isBrowserInForeground(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p1, p1, LA4/b;->a:Landroid/content/Context;

    const p3, 0x7f1410fe

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrl(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;->a:Ljava/lang/String;

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getTitle(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p2, v0, p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/Uri;)V

    return-object p3

    :cond_1
    new-instance p0, Lz4/d;

    const/16 p1, 0x5de

    const-string p2, "duplicate item"

    invoke-direct {p0, p1, p2}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lz4/d;

    const/16 p1, 0x3e9

    const-string p2, "Invalid Argument"

    invoke-direct {p0, p1, p2}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public deleteBookmarks(Lz4/a;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "BrowserFunctions"

    const-string v0, "deleteBookmarks"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->checkSecretModeEnabled()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getCrossAppActionBookmarkModel(Lz4/a;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;->deleteCrossAppActionBookmarks(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public findBookmarks(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;Lib/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "BrowserFunctions"

    const-string v0, "findBookmark"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->checkSecretModeEnabled()V

    iget-object p3, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->c:Ljava/lang/String;

    const/16 v0, 0x3e9

    iget-object v1, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iget-object v2, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-nez p3, :cond_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lz4/d;

    const-string p1, "Invalid Argument"

    invoke-direct {p0, v0, p1}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p3, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->f:I

    if-lez p3, :cond_9

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getCrossAppActionBookmarkModel(Lz4/a;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;

    move-result-object v3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ltb/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getEpochTime(Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getEpochTime(Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;)J

    move-result-wide v1

    iput-wide v1, v0, Ltb/v;->a:J

    :cond_3
    iget-wide v1, v0, Ltb/v;->a:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Ltb/v;->a:J

    :cond_4
    iget-wide v1, v0, Ltb/v;->a:J

    cmp-long v4, v6, v1

    if-lez v4, :cond_5

    return-object p1

    :cond_5
    iget-object v4, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->c:Ljava/lang/String;

    move-wide v5, v6

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;->findCrossAppActionBookmarks(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    new-instance v2, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$findBookmarks$lambda$5$$inlined$sortBy$1;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$findBookmarks$lambda$5$$inlined$sortBy$1;-><init>(Ltb/v;)V

    invoke-static {v1, v2}, Lfb/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->reviseMaxCount(I)I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :cond_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;

    new-instance v2, Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getTitle(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v8, "getUrl(...)"

    invoke-static {v1, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;->a:Ljava/lang/String;

    invoke-direct {v6, v8, v7, v1}, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v8, v4, v5, v6}, Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/Uri;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v3

    if-lt v0, p0, :cond_7

    :cond_8
    return-object p1

    :cond_9
    new-instance p0, Lz4/d;

    const-string p1, "Invalid Max Count: "

    invoke-static {p3, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public findTabs(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "BrowserFunctions"

    const-string p3, "findTabs"

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->INSTANCE:Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;

    check-cast p1, LA4/b;

    iget-object p1, p1, LA4/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->findTabs(Landroid/content/Context;Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHistories(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;Lib/c;)Ljava/lang/Object;
    .locals 19
    .param p1    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/google/android/appfunctions/schema/common/v1/types/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;

    iget v4, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;

    invoke-direct {v3, v0, v2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;-><init>(Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;Lib/c;)V

    :goto_0
    iget-object v2, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->result:Ljava/lang/Object;

    sget-object v4, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v5, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->label:I

    const-string v6, "BrowserFunctions"

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v0, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v4, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ltb/v;

    iget-object v5, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v8, v0

    move-object v2, v1

    move-object v0, v3

    move-object v1, v5

    move v9, v7

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    const-string v2, "getHistories"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;->e:Ljava/lang/String;

    const/16 v5, 0x3e9

    iget-object v8, v1, Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iget-object v9, v1, Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;->c:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-nez v2, :cond_4

    if-nez v9, :cond_4

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lz4/d;

    const-string v1, "Invalid Argument"

    invoke-direct {v0, v5, v1}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    iget v2, v1, Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;->f:I

    if-lez v2, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->checkSecretModeEnabled()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v5, 0x5

    const/16 v10, -0x5a

    invoke-virtual {v2, v5, v10}, Ljava/util/Calendar;->add(II)V

    new-instance v15, Ltb/v;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ltb/v;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    if-eqz v9, :cond_5

    invoke-direct {v0, v9}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getEpochTime(Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;)J

    move-result-wide v9

    iput-wide v9, v15, Ltb/v;->a:J

    :cond_5
    if-eqz v8, :cond_6

    invoke-direct {v0, v8}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getEpochTime(Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;)J

    move-result-wide v8

    iput-wide v8, v5, Ltb/v;->a:J

    :cond_6
    iget-wide v8, v15, Ltb/v;->a:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iput-wide v8, v15, Ltb/v;->a:J

    :cond_7
    iget-wide v8, v5, Ltb/v;->a:J

    cmp-long v2, v8, v10

    if-nez v2, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v5, Ltb/v;->a:J

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;->e:Ljava/lang/String;

    if-eqz v10, :cond_9

    invoke-static {v10}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "toLowerCase(...)"

    invoke-static {v10, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v10, v9

    :goto_2
    if-eqz v10, :cond_a

    const-string v11, "((title LIKE ?) OR (url LIKE ?)) AND bookmark = 0"

    move-object v13, v11

    goto :goto_3

    :cond_a
    move-object v13, v9

    :goto_3
    if-eqz v10, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "%"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_b
    filled-new-array {v10, v10}, [Ljava/lang/String;

    move-result-object v14

    sget-object v10, LNc/N;->a:LWc/f;

    invoke-static {v10}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v10

    new-instance v12, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;

    const/16 v18, 0x0

    move-object v11, v12

    move-object v7, v12

    move-object/from16 v12, p1

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    invoke-direct/range {v11 .. v18}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;-><init>(Lz4/a;Ljava/lang/String;[Ljava/lang/String;Ltb/v;Ltb/v;Ljava/util/ArrayList;Lib/c;)V

    const/4 v11, 0x3

    invoke-static {v10, v9, v9, v7, v11}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object v7

    iput-object v0, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->L$3:Ljava/lang/Object;

    iput-object v8, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->L$4:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$1;->label:I

    invoke-virtual {v7, v3}, LNc/t0;->h(Lkb/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_c

    return-object v4

    :cond_c
    move-object v4, v5

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v9, :cond_d

    new-instance v3, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$lambda$12$$inlined$sortBy$1;

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$lambda$12$$inlined$sortBy$1;-><init>(Ltb/v;)V

    invoke-static {v8, v3}, Lfb/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_d
    iget v3, v1, Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;->f:I

    invoke-direct {v0, v3}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->reviseMaxCount(I)I

    move-result v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, "iterator(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v7, "next(...)"

    invoke-static {v5, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;

    new-instance v7, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v9, "getUrl(...)"

    invoke-static {v5, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;->a:Ljava/lang/String;

    invoke-direct {v7, v9, v8, v5}, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    add-int/2addr v4, v5

    if-lt v4, v0, :cond_e

    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "GetHistory: List size- "

    invoke-static {v0, v1, v6}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_10
    new-instance v0, Lz4/d;

    const-string v1, "Invalid Max Count: "

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public showBookmark(Lz4/a;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Landroid/app/PendingIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "BrowserFunctions"

    const-string v0, "showBookmark"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->checkSecretModeEnabled()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getCrossAppActionBookmarkModel(Lz4/a;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;->getCrossActionBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p1, LA4/b;

    iget-object p1, p1, LA4/b;->a:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p3, Landroid/content/ComponentName;

    const-class v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {p3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const/4 p0, 0x0

    const/4 p3, 0x0

    const/high16 v0, 0x4000000

    invoke-static {p1, p3, p2, v0, p0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "getActivity(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lz4/d;

    const/16 p1, 0x5dc

    const-string p2, "Invalid bookmarkId"

    invoke-direct {p0, p1, p2}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public showSite(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;Lib/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;",
            "Lib/c<",
            "-",
            "Landroid/app/PendingIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "BrowserFunctions"

    const-string p3, "showSite"

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, LA4/b;

    iget-object p1, p1, LA4/b;->a:Landroid/content/Context;

    iget-object p3, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;->c:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;->c:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    iget-object v1, p3, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;->c:Ljava/lang/String;

    invoke-static {v1}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p3, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;->c:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "shouldShowInNewTab: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;->d:Z

    invoke-static {p0, p3, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string p3, "should_show_in_new_tab"

    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 p3, 0x14000000

    invoke-static {p1, p2, v1, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p3

    :try_start_0
    const-class v1, Landroid/app/KeyguardManager;

    const-string v2, "semSetPendingIntentAfterUnlock"

    const-class v3, Landroid/app/PendingIntent;

    const-class v4, Landroid/content/Intent;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "showCoverToast"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "ignoreKeyguardState"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "keyguard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v3, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/KeyguardManager;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x4000000

    invoke-static {p1, p2, v4, v5, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p1

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "KeyguardManager#semSetPendingIntentAfterUnlock is unsupported."

    invoke-static {p0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {p3}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p0, Lz4/d;

    const/16 p1, 0x3e9

    const-string p2, "Invalid Argument"

    invoke-direct {p0, p1, p2}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public showTab(Lz4/a;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Landroid/app/PendingIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "BrowserFunctions"

    const-string p3, "showTab"

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->INSTANCE:Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;

    check-cast p1, LA4/b;

    iget-object p1, p1, LA4/b;->a:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->showTab(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public updateBookmark(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;Lib/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;",
            "Lib/c<",
            "-",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "BrowserFunctions"

    const-string v0, "updateBookmark"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->checkSecretModeEnabled()V

    iget-object p3, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    iget-object v0, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/SetUriField;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;->c:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    if-eqz v0, :cond_5

    iget-object p3, v0, Lcom/google/android/appfunctions/schema/common/v1/types/SetUriField;->c:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    iget-object p3, p3, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;->c:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getCrossAppActionBookmarkModel(Lz4/a;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;

    move-result-object p0

    const/4 p1, 0x0

    iget-object p3, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    if-eqz p3, :cond_2

    iget-object p3, p3, Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object p3, p1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/google/android/appfunctions/schema/common/v1/types/SetUriField;->c:Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    if-eqz v0, :cond_3

    iget-object p1, v0, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;->c:Ljava/lang/String;

    :cond_3
    iget-object v0, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p3, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;->updateCrossAppActionBookmark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance p1, Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getTitle(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    const-string v3, "getUrl(...)"

    invoke-static {p0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;->a:Ljava/lang/String;

    invoke-direct {v1, p2, v2, p0}, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/Uri;)V

    return-object p1

    :cond_4
    new-instance p0, Lz4/d;

    const/16 p1, 0x5dc

    const-string p2, "Invalid bookmarkId"

    invoke-direct {p0, p1, p2}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lz4/d;

    const/16 p1, 0x3e9

    const-string p2, "Invalid Argument"

    invoke-direct {p0, p1, p2}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0
.end method
