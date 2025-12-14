.class public Lsrib/vizinsight/dvs/DVSGIFConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentIndex:I

.field private fps:I

.field private max_resolution:I

.field private savePath:Ljava/lang/String;

.field private screenHeight:I

.field private screenWidth:I

.field private touchX:I

.field private touchY:I

.field private url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(IIIIILandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->max_resolution:I

    iput p2, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->fps:I

    iput p3, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->touchX:I

    iput p4, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->touchY:I

    iput p5, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->currentIndex:I

    iput-object p6, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->url:Landroid/net/Uri;

    const-string p1, ""

    iput-object p1, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->savePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/net/Uri;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->max_resolution:I

    iput p2, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->fps:I

    iput p3, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->touchX:I

    iput p4, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->touchY:I

    iput p5, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->currentIndex:I

    iput-object p6, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->url:Landroid/net/Uri;

    iput-object p7, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->savePath:Ljava/lang/String;

    iput p8, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->screenWidth:I

    iput p9, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->screenHeight:I

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    iget p0, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->currentIndex:I

    return p0
.end method

.method public getFps()I
    .locals 0

    iget p0, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->fps:I

    return p0
.end method

.method public getMax_resolution()I
    .locals 0

    iget p0, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->max_resolution:I

    return p0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->savePath:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenHeight()I
    .locals 0

    iget p0, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->screenHeight:I

    return p0
.end method

.method public getScreenWidth()I
    .locals 0

    iget p0, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->screenWidth:I

    return p0
.end method

.method public getTouchX()I
    .locals 0

    iget p0, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->touchX:I

    return p0
.end method

.method public getTouchY()I
    .locals 0

    iget p0, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->touchY:I

    return p0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lsrib/vizinsight/dvs/DVSGIFConfig;->url:Landroid/net/Uri;

    return-object p0
.end method
