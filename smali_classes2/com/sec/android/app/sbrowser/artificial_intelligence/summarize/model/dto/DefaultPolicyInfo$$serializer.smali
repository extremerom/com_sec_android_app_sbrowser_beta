.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldd/d;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u000e\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo.$serializer",
        "Ldd/d;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;",
        "<init>",
        "()V",
        "Lcd/a;",
        "decoder",
        "deserialize",
        "(Lcd/a;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;",
        "",
        "Lad/b;",
        "childSerializers",
        "()[Lad/b;",
        "Lbd/d;",
        "descriptor",
        "Lbd/d;",
        "getDescriptor",
        "()Lbd/d;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final descriptor:Lbd/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;

    const/16 v1, 0x8

    sput v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;->$stable:I

    new-instance v1, Ldd/h;

    const-string v2, "com.sec.android.app.sbrowser.artificial_intelligence.summarize.model.dto.DefaultPolicyInfo"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Ldd/h;-><init>(Ljava/lang/String;Ldd/d;I)V

    const-string v0, "maxLength"

    invoke-virtual {v1, v0}, Ldd/h;->k(Ljava/lang/String;)V

    const-string v0, "shortNotePolicy"

    invoke-virtual {v1, v0}, Ldd/h;->k(Ljava/lang/String;)V

    const-string v0, "longNotePolicy"

    invoke-virtual {v1, v0}, Ldd/h;->k(Ljava/lang/String;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;->descriptor:Lbd/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lad/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lad/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x3

    new-array p0, p0, [Lad/b;

    sget-object v0, Ldd/e;->a:Ldd/e;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final deserialize(Lcd/a;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;
    .locals 9
    .param p1    # Lcd/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;->descriptor:Lbd/d;

    invoke-interface {p1, p0}, Lcd/a;->a(Lbd/d;)LU9/c;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v5, v4

    move-object v6, v2

    move-object v7, v6

    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p1, p0}, LU9/c;->e(Lbd/d;)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_3

    if-eqz v3, :cond_2

    if-eq v3, v0, :cond_1

    const/4 v8, 0x2

    if-ne v3, v8, :cond_0

    sget-object v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;

    invoke-virtual {p1, p0, v8, v3, v7}, LU9/c;->g(Lbd/d;ILad/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    or-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_0
    new-instance p0, Lad/e;

    invoke-direct {p0, v3}, Lad/e;-><init>(I)V

    throw p0

    :cond_1
    sget-object v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;

    invoke-virtual {p1, p0, v0, v3, v6}, LU9/c;->g(Lbd/d;ILad/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    or-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0, v1}, LU9/c;->f(Lbd/d;I)I

    move-result v5

    or-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, LU9/c;->i(Lbd/d;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;-><init>(IILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Ldd/j;)V

    return-object p0
.end method

.method public bridge synthetic deserialize(Lcd/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;->deserialize(Lcd/a;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lbd/d;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo$$serializer;->descriptor:Lbd/d;

    return-object p0
.end method

.method public typeParametersSerializers()[Lad/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lad/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Ldd/f;->b:[Lad/b;

    return-object p0
.end method
