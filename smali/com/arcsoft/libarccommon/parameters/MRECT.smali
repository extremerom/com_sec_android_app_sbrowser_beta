.class public Lcom/arcsoft/libarccommon/parameters/MRECT;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/arcsoft/libarccommon/parameters/MRECT;->left:I

    iput p2, p0, Lcom/arcsoft/libarccommon/parameters/MRECT;->top:I

    iput p3, p0, Lcom/arcsoft/libarccommon/parameters/MRECT;->right:I

    iput p4, p0, Lcom/arcsoft/libarccommon/parameters/MRECT;->bottom:I

    return-void
.end method
