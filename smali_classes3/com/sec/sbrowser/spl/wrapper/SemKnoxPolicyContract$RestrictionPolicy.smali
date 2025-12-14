.class public Lcom/sec/sbrowser/spl/wrapper/SemKnoxPolicyContract$RestrictionPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictionPolicy"
.end annotation


# static fields
.field public static final URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.samsung.android.provider.SemKnoxPolicyContract$RestrictionPolicy"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "URI"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemKnoxPolicyContract$RestrictionPolicy;->URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
