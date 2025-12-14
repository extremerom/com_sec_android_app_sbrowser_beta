.class Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->initReadAloud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;

.field final synthetic val$isDone:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$1;->val$isDone:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const-string p1, "ON"

    goto :goto_0

    :cond_0
    const-string p1, "OFF"

    :goto_0
    const-string p2, "Result"

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
