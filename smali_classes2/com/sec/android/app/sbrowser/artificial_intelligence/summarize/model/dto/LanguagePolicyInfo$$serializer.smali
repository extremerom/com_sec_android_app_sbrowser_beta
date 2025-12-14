.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;
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
        "com/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo.$serializer",
        "Ldd/d;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;",
        "<init>",
        "()V",
        "Lcd/a;",
        "decoder",
        "deserialize",
        "(Lcd/a;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;",
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

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;
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

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;

    const/16 v1, 0x8

    sput v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;->$stable:I

    new-instance v1, Ldd/h;

    const-string v2, "com.sec.android.app.sbrowser.artificial_intelligence.summarize.model.dto.LanguagePolicyInfo"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Ldd/h;-><init>(Ljava/lang/String;Ldd/d;I)V

    const-string v0, "languageCodes"

    invoke-virtual {v1, v0}, Ldd/h;->k(Ljava/lang/String;)V

    const-string v0, "maxLength"

    invoke-virtual {v1, v0}, Ldd/h;->k(Ljava/lang/String;)V

    const-string v0, "shortNotePolicy"

    invoke-virtual {v1, v0}, Ldd/h;->k(Ljava/lang/String;)V

    const-string v0, "longNotePolicy"

    invoke-virtual {v1, v0}, Ldd/h;->k(Ljava/lang/String;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;->descriptor:Lbd/d;

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

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;->access$get$childSerializers$cp()[Lad/b;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const/4 v1, 0x4

    new-array v1, v1, [Lad/b;

    aput-object p0, v1, v0

    sget-object p0, Ldd/e;->a:Ldd/e;

    const/4 v0, 0x1

    aput-object p0, v1, v0

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;

    const/4 v0, 0x2

    aput-object p0, v1, v0

    const/4 v0, 0x3

    aput-object p0, v1, v0

    return-object v1
.end method

.method public final deserialize(Lcd/a;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;
    .locals 11
    .param p1    # Lcd/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;->descriptor:Lbd/d;

    invoke-interface {p1, p0}, Lcd/a;->a(Lbd/d;)LU9/c;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;->access$get$childSerializers$cp()[Lad/b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v7, v5

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    move v3, v1

    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {p1, p0}, LU9/c;->e(Lbd/d;)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_4

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_2

    const/4 v10, 0x2

    if-eq v4, v10, :cond_1

    const/4 v10, 0x3

    if-ne v4, v10, :cond_0

    sget-object v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;

    invoke-virtual {p1, p0, v10, v4, v9}, LU9/c;->g(Lbd/d;ILad/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    or-int/lit8 v5, v5, 0x8

    goto :goto_0

    :cond_0
    new-instance p0, Lad/e;

    invoke-direct {p0, v4}, Lad/e;-><init>(I)V

    throw p0

    :cond_1
    sget-object v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy$$serializer;

    invoke-virtual {p1, p0, v10, v4, v8}, LU9/c;->g(Lbd/d;ILad/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    or-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0, v1}, LU9/c;->f(Lbd/d;I)I

    move-result v7

    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    aget-object v4, v0, v2

    invoke-virtual {p1, p0, v2, v4, v6}, LU9/c;->g(Lbd/d;ILad/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/List;

    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p0}, LU9/c;->i(Lbd/d;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;-><init>(ILjava/util/List;ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Ldd/j;)V

    return-object p0
.end method

.method public bridge synthetic deserialize(Lcd/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;->deserialize(Lcd/a;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lbd/d;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;->descriptor:Lbd/d;

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
