.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo$$serializer;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0087\u0008\u0018\u0000 #2\u00020\u0001:\u0002#$B!\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B5\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0007\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001a\u0010\u001b\u001a\u00020\u00132\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u001d\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;",
        "",
        "",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;",
        "languagePoliciesInfo",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;",
        "defaultPolicyInfo",
        "<init>",
        "(Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;)V",
        "",
        "seen0",
        "Ldd/j;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;Ldd/j;)V",
        "",
        "languageCode",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;",
        "getPolicyInfoByLanguageCode",
        "(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;",
        "",
        "isValid",
        "()Z",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/List;",
        "getLanguagePoliciesInfo",
        "()Ljava/util/List;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;",
        "getDefaultPolicyInfo",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;",
        "Companion",
        "$serializer",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lad/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lad/b;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final defaultPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final languagePoliciesInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->$stable:I

    new-instance v0, Ldd/b;

    sget-object v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo$$serializer;

    invoke-direct {v0, v2}, Ldd/b;-><init>(Lad/b;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lad/b;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->$childSerializers:[Lad/b;

    const-string v0, "SummaryPolicyInfo"

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;Ldd/j;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    if-nez p4, :cond_0

    sget-object p2, Lfb/v;->a:Lfb/v;

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->languagePoliciesInfo:Ljava/util/List;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;-><init>(ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;ILtb/f;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->defaultPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->defaultPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;",
            ">;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "languagePoliciesInfo"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultPolicyInfo"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->languagePoliciesInfo:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->defaultPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;ILtb/f;)V
    .locals 6

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lfb/v;->a:Lfb/v;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;-><init>(ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;ILtb/f;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;-><init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lad/b;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->$childSerializers:[Lad/b;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->languagePoliciesInfo:Ljava/util/List;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->languagePoliciesInfo:Ljava/util/List;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->defaultPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->defaultPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPolicyInfoByLanguageCode(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->languagePoliciesInfo:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;->getLanguageCodes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    return-object v1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->defaultPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->languagePoliciesInfo:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->defaultPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->languagePoliciesInfo:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/LanguagePolicyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->defaultPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;->isValid()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->languagePoliciesInfo:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->defaultPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SummaryPolicyInfo(languagePoliciesInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", defaultPolicyInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
