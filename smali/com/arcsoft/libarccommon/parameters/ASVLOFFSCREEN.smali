.class public Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ASVL_PAF_DEPTH_U16:I = 0xc02

.field public static final ASVL_PAF_GRAY:I = 0x701

.field public static final ASVL_PAF_I420:I = 0x601

.field public static final ASVL_PAF_NV12:I = 0x801

.field public static final ASVL_PAF_NV21:I = 0x802

.field public static final ASVL_PAF_P010_LSB:I = 0xf02

.field public static final ASVL_PAF_P010_MSB:I = 0xf01

.field public static final ASVL_PAF_RGB16_R5G6B5:I = 0x105

.field public static final ASVL_PAF_RGB24_B8G8R8:I = 0x201

.field public static final ASVL_PAF_RGB24_R8G8B8:I = 0x204

.field public static final ASVL_PAF_RGB32_A8R8G8B8:I = 0x304

.field public static final ASVL_PAF_RGB32_B8G8R8:I = 0x301

.field public static final ASVL_PAF_RGB32_B8G8R8A8:I = 0x302

.field public static final ASVL_PAF_RGB32_R8G8B8:I = 0x303

.field public static final ASVL_PAF_RGB32_R8G8B8A8:I = 0x305


# instance fields
.field public m_Height:I

.field public m_Pitch0:I

.field public m_Pitch1:I

.field public m_Pitch2:I

.field public m_Pitch3:I

.field public m_PixelFormat:I

.field public m_Plane0:[B

.field public m_Plane1:[B

.field public m_Plane2:[B

.field public m_Plane3:[B

.field public m_PlaneByteBuffer0:Ljava/nio/ByteBuffer;

.field public m_PlaneByteBuffer1:Ljava/nio/ByteBuffer;

.field public m_PlaneByteBuffer2:Ljava/nio/ByteBuffer;

.field public m_PlaneByteBuffer3:Ljava/nio/ByteBuffer;

.field public m_Width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;

    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    iget-object v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane0:[B

    array-length v4, v1

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    if-eqz v1, :cond_1

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    iget-object v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane1:[B

    array-length v4, v1

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    iget-object v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane2:[B

    array-length v4, v1

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane3:[B

    if-eqz v1, :cond_3

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane3:[B

    iget-object v3, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_Plane3:[B

    array-length v4, v1

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer0:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer0:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer0:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer0:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer0:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer0:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer0:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_4
    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer1:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer1:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer1:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer1:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer1:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer1:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer1:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_5
    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer2:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer2:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer2:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer2:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer2:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer2:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer2:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_6
    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer3:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer3:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer3:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer3:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer3:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer3:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p0, v0, Lcom/arcsoft/libarccommon/parameters/ASVLOFFSCREEN;->m_PlaneByteBuffer3:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_7
    return-object v0
.end method
