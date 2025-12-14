.class public final Lcom/samsung/android/motionphoto/utils/ex/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/motionphoto/utils/ex/g;->a:J

    iput-wide p3, p0, Lcom/samsung/android/motionphoto/utils/ex/g;->b:J

    iput p5, p0, Lcom/samsung/android/motionphoto/utils/ex/g;->c:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/motionphoto/utils/ex/g;->b:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/motionphoto/utils/ex/g;->a:J

    return-wide v0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/motionphoto/utils/ex/g;->c:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoInfo(videoOffset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/android/motionphoto/utils/ex/g;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/motionphoto/utils/ex/g;->b:J

    const-string p0, ")"

    invoke-static {v1, v2, p0, v0}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
