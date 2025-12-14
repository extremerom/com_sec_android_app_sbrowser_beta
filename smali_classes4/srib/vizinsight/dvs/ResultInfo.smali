.class public Lsrib/vizinsight/dvs/ResultInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field gifPath:Ljava/lang/String;

.field result:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGifPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsrib/vizinsight/dvs/ResultInfo;->gifPath:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()Z
    .locals 0

    iget-boolean p0, p0, Lsrib/vizinsight/dvs/ResultInfo;->result:Z

    return p0
.end method

.method public setGifPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsrib/vizinsight/dvs/ResultInfo;->gifPath:Ljava/lang/String;

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lsrib/vizinsight/dvs/ResultInfo;->result:Z

    return-void
.end method
