.class public Lcom/sec/android/app/sbrowser/common/model/app/SBrowserDeepLinkAppInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIntent:Landroid/content/Intent;

.field private final mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/app/SBrowserDeepLinkAppInfo;->mIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/model/app/SBrowserDeepLinkAppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/model/app/SBrowserDeepLinkAppInfo;->mSize:I

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/app/SBrowserDeepLinkAppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/app/SBrowserDeepLinkAppInfo;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/app/SBrowserDeepLinkAppInfo;->mSize:I

    return p0
.end method
