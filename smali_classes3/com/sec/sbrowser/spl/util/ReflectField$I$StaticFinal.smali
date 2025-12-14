.class public Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;
.super Lcom/sec/sbrowser/spl/util/ReflectField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/util/ReflectField$I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticFinal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/sbrowser/spl/util/ReflectField<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/sbrowser/spl/util/ReflectField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    invoke-virtual {p0, v0}, Lcom/sec/sbrowser/spl/util/ReflectField;->get(Lcom/sec/sbrowser/spl/util/ReflectBase;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method
