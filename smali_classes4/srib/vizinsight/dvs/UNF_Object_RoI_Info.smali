.class public Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public label:I

.field public score:F

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>(FFFFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x1:F

    iput p2, p0, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y1:F

    iput p3, p0, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x2:F

    iput p4, p0, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y2:F

    iput p5, p0, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->score:F

    iput p6, p0, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->label:I

    return-void
.end method
