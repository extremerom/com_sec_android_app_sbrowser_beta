.class public Lcom/arcsoft/libobjectcapture/parameters/ARC_SALIENT_OBJECT_SEGMENTATION_METADATA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mPoint:Lcom/arcsoft/libarccommon/parameters/MPOINT;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/arcsoft/libarccommon/parameters/MPOINT;

    invoke-direct {v0}, Lcom/arcsoft/libarccommon/parameters/MPOINT;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/libobjectcapture/parameters/ARC_SALIENT_OBJECT_SEGMENTATION_METADATA;->mPoint:Lcom/arcsoft/libarccommon/parameters/MPOINT;

    return-void
.end method
