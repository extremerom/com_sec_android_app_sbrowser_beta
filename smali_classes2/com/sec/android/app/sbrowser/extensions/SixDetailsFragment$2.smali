.class Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateViewInGalaxyStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->n(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->r(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->k(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext_id"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->m(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ext_name"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "601"

    const-string v0, "6118"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x1

    return p0
.end method
