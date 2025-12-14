.class Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->createUpdaterCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

.field final synthetic val$iconUrl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->val$iconUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->val$url:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->val$iconUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->m(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->n(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->o(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->val$title:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;->val$iconUrl:Ljava/lang/String;

    invoke-static {p2, v0, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->m(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
