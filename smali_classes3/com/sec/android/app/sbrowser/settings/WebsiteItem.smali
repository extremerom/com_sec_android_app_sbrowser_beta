.class public Lcom/sec/android/app/sbrowser/settings/WebsiteItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBackgroundColor:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;->mUrl:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;->mBackgroundColor:I

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;->mBackgroundColor:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/WebsiteItem;->mBackgroundColor:I

    return-void
.end method
