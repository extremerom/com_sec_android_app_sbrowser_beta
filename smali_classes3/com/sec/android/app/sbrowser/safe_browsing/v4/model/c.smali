.class public final synthetic Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;

.field public final synthetic d:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;

.field public final synthetic e:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

.field public final synthetic f:LNc/x;

.field public final synthetic g:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->b:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->c:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->d:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->e:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->f:LNc/x;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->g:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->d:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->e:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->b:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->c:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->f:LNc/x;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;->g:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;->a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object p0

    return-object p0
.end method
