.class public Lcom/arcsoft/libarccommon/parameters/MPOINT3F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/arcsoft/libarccommon/parameters/MPOINT3F;->x:F

    iput p2, p0, Lcom/arcsoft/libarccommon/parameters/MPOINT3F;->y:F

    iput p3, p0, Lcom/arcsoft/libarccommon/parameters/MPOINT3F;->z:F

    return-void
.end method
