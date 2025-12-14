.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$FetchListener;
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;
.implements Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/x;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentFetched(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/x;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->d(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFetchFinished(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/x;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->onIconFetched(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public onFetched(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/x;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateTouchIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;)V

    return-void
.end method
