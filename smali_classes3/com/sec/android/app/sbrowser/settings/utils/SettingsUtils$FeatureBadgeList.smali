.class Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$FeatureBadgeList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureBadgeList"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mVisited:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$FeatureBadgeList;->mName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$FeatureBadgeList;->mVisited:Z

    return-void
.end method
