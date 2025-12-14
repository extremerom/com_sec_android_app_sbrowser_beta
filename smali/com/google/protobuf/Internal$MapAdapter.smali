.class public Lcom/google/protobuf/Internal$MapAdapter;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Internal$MapAdapter$Converter;,
        Lcom/google/protobuf/Internal$MapAdapter$SetAdapter;,
        Lcom/google/protobuf/Internal$MapAdapter$EntryAdapter;,
        Lcom/google/protobuf/Internal$MapAdapter$IteratorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "RealValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final synthetic a:I


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 0

    new-instance p0, Lcom/google/protobuf/Internal$MapAdapter$SetAdapter;

    const/4 p0, 0x0

    throw p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
