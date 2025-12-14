.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/SmartAntiTrackingDataSource$Callback;
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource$Callback;
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$Callback;
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/f;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/f;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/f;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/f;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;->onResponse(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V

    return-void
.end method
