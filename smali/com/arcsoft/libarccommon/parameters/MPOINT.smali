.class public Lcom/arcsoft/libarccommon/parameters/MPOINT;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/arcsoft/libarccommon/parameters/MPOINT;->x:I

    iput p2, p0, Lcom/arcsoft/libarccommon/parameters/MPOINT;->y:I

    return-void
.end method
