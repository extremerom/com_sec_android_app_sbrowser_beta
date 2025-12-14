.class public Lcom/arcsoft/libarccommon/parameters/MRECTF;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/arcsoft/libarccommon/parameters/MRECTF;->left:F

    iput p2, p0, Lcom/arcsoft/libarccommon/parameters/MRECTF;->top:F

    iput p3, p0, Lcom/arcsoft/libarccommon/parameters/MRECTF;->right:F

    iput p4, p0, Lcom/arcsoft/libarccommon/parameters/MRECTF;->bottom:F

    return-void
.end method
