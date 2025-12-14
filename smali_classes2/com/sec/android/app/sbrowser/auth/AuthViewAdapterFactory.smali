.class public Lcom/sec/android/app/sbrowser/auth/AuthViewAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;I)Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;
    .locals 3

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/auth/ged/NonSamsungAuthViewAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;)V

    return-object p2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthViewAdapter;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthViewAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p2, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthViewAdapter;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthViewAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v1, p2, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    const/16 v1, 0xa

    if-eq p2, v1, :cond_6

    const/4 v1, 0x6

    if-eq p2, v1, :cond_6

    const/16 v1, 0x12

    if-ne p2, v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/sec/android/app/sbrowser/auth/CompositeAuthViewAdapter;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/CompositeAuthViewAdapter;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_6
    :goto_0
    new-instance p2, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/auth/AuthView;)V

    return-object p2

    :cond_7
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    return-object p0
.end method
