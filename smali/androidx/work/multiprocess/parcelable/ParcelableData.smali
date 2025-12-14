.class public Landroidx/work/multiprocess/parcelable/ParcelableData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lf3/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr5/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lr5/n;-><init>(I)V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    packed-switch v5, :pswitch_data_0

    const-string p0, "Unsupported type "

    invoke-static {v5, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v5

    sget-object v6, Lf3/i;->b:Ljava/lang/String;

    array-length v6, v5

    new-array v6, v6, [Ljava/lang/Double;

    move v7, v3

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_0

    aget-wide v8, v5, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/2addr v7, v0

    goto :goto_1

    :cond_0
    move-object v5, v6

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    sget-object v6, Lf3/i;->b:Ljava/lang/String;

    array-length v6, v5

    new-array v6, v6, [Ljava/lang/Float;

    move v7, v3

    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_0

    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/2addr v7, v0

    goto :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v5

    sget-object v6, Lf3/i;->b:Ljava/lang/String;

    array-length v6, v5

    new-array v6, v6, [Ljava/lang/Long;

    move v7, v3

    :goto_3
    array-length v8, v5

    if-ge v7, v8, :cond_0

    aget-wide v8, v5, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/2addr v7, v0

    goto :goto_3

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    sget-object v6, Lf3/i;->b:Ljava/lang/String;

    array-length v6, v5

    new-array v6, v6, [Ljava/lang/Integer;

    move v7, v3

    :goto_4
    array-length v8, v5

    if-ge v7, v8, :cond_0

    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/2addr v7, v0

    goto :goto_4

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    sget-object v6, Lf3/i;->b:Ljava/lang/String;

    array-length v6, v5

    new-array v6, v6, [Ljava/lang/Byte;

    move v7, v3

    :goto_5
    array-length v8, v5

    if-ge v7, v8, :cond_0

    aget-byte v8, v5, v7

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/2addr v7, v0

    goto :goto_5

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v5

    sget-object v6, Lf3/i;->b:Ljava/lang/String;

    array-length v6, v5

    new-array v6, v6, [Ljava/lang/Boolean;

    move v7, v3

    :goto_6
    array-length v8, v5

    if-ge v7, v8, :cond_0

    aget-boolean v8, v5, v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/2addr v7, v0

    goto :goto_6

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_8

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_8

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_8

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_8

    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    goto :goto_8

    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v0, :cond_1

    move v5, v0

    goto :goto_7

    :cond_1
    move v5, v3

    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_8

    :pswitch_e
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lf3/i;

    invoke-direct {p1, v1}, Lf3/i;-><init>(Ljava/util/HashMap;)V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->a:Lf3/i;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lf3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->a:Lf3/i;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 p2, 0x1

    iget-object p0, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->a:Lf3/i;

    iget-object p0, p0, Lf3/i;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    :cond_1
    const-class v4, Ljava/lang/Byte;

    if-ne v3, v4, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_7

    :cond_2
    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_3

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    :cond_3
    const-class v4, Ljava/lang/Long;

    if-ne v3, v4, :cond_4

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_7

    :cond_4
    const-class v4, Ljava/lang/Float;

    if-ne v3, v4, :cond_5

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_7

    :cond_5
    const-class v4, Ljava/lang/Double;

    if-ne v3, v4, :cond_6

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_7

    :cond_6
    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_7

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    const-class v4, [Ljava/lang/Boolean;

    if-ne v3, v4, :cond_9

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, [Ljava/lang/Boolean;

    sget-object v3, Lf3/i;->b:Ljava/lang/String;

    array-length v3, v0

    new-array v3, v3, [Z

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_8

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aput-boolean v4, v3, v2

    add-int/2addr v2, p2

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_7

    :cond_9
    const-class v4, [Ljava/lang/Byte;

    if-ne v3, v4, :cond_b

    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, [Ljava/lang/Byte;

    sget-object v3, Lf3/i;->b:Ljava/lang/String;

    array-length v3, v0

    new-array v3, v3, [B

    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_a

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v2

    add-int/2addr v2, p2

    goto :goto_2

    :cond_a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_7

    :cond_b
    const-class v4, [Ljava/lang/Integer;

    if-ne v3, v4, :cond_d

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, [Ljava/lang/Integer;

    sget-object v3, Lf3/i;->b:Ljava/lang/String;

    array-length v3, v0

    new-array v3, v3, [I

    :goto_3
    array-length v4, v0

    if-ge v2, v4, :cond_c

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    add-int/2addr v2, p2

    goto :goto_3

    :cond_c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_7

    :cond_d
    const-class v4, [Ljava/lang/Long;

    if-ne v3, v4, :cond_f

    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, [Ljava/lang/Long;

    sget-object v3, Lf3/i;->b:Ljava/lang/String;

    array-length v3, v0

    new-array v3, v3, [J

    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_e

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/2addr v2, p2

    goto :goto_4

    :cond_e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_7

    :cond_f
    const-class v4, [Ljava/lang/Float;

    if-ne v3, v4, :cond_11

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, [Ljava/lang/Float;

    sget-object v3, Lf3/i;->b:Ljava/lang/String;

    array-length v3, v0

    new-array v3, v3, [F

    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_10

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v3, v2

    add-int/2addr v2, p2

    goto :goto_5

    :cond_10
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_7

    :cond_11
    const-class v4, [Ljava/lang/Double;

    if-ne v3, v4, :cond_13

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, [Ljava/lang/Double;

    sget-object v3, Lf3/i;->b:Ljava/lang/String;

    array-length v3, v0

    new-array v3, v3, [D

    :goto_6
    array-length v4, v0

    if-ge v2, v4, :cond_12

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/2addr v2, p2

    goto :goto_6

    :cond_12
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto :goto_7

    :cond_13
    const-class v2, [Ljava/lang/String;

    if-ne v3, v2, :cond_14

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unsupported value type "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    return-void
.end method
