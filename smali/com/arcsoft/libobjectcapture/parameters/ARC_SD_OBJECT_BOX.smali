.class public Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mLeftTopX:J

.field public mLeftTopY:J

.field public mRightBottomX:J

.field public mRightBottomY:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mLeftTopX:J

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mLeftTopY:J

    int-to-long p1, p3

    iput-wide p1, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mRightBottomX:J

    int-to-long p1, p4

    iput-wide p1, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SD_OBJECT_BOX;->mRightBottomY:J

    return-void
.end method
