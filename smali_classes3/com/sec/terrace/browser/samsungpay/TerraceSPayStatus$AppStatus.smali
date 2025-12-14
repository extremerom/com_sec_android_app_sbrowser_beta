.class public Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$AppStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppStatus"
.end annotation


# instance fields
.field mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInstalled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$AppStatus;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
