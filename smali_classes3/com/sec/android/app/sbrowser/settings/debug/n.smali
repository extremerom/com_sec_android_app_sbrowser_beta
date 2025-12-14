.class public final synthetic Lcom/sec/android/app/sbrowser/settings/debug/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/n;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/n;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/n;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/n;->a:Ljava/util/List;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->m(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/Boolean;)V

    return-void
.end method
