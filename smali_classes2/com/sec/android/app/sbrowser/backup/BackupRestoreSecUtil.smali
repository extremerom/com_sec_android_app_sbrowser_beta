.class Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCipher:Ljavax/crypto/Cipher;

.field private mKey:Ljavax/crypto/spec/SecretKeySpec;

.field private mSalt:[B

.field private mSecurityLevel:I

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSalt:[B

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSessionKey:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSecurityLevel:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "BackupRestoreSecUtil mSecurityLevel : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSecurityLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupRestoreSecUtil"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createDecryptor(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSecurityLevel:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSalt:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->generateKey()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v0, Ljavax/crypto/CipherInputStream;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method private createEncryptor(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSecurityLevel:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->generateEncryptSalt()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSalt:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->generateKey()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v0, Ljavax/crypto/CipherOutputStream;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method private generateEncryptSalt()[B
    .locals 1

    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private generateKey()Z
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSecurityLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :goto_1
    const-string v0, "BackupRestoreSecUtil"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "PBKDF2WithHmacSHA1"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSalt:[B

    const/16 v3, 0x3e8

    const/16 v4, 0x100

    invoke-direct {v2, v0, p0, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->mSessionKey:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    const/16 p0, 0x10

    new-array v1, p0, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method private sendProgress(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;II)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-lez p4, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getProgress()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getNextStepProgress()I

    move-result p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getProgress()I

    move-result v2

    sub-int/2addr p0, v2

    int-to-long v2, p0

    int-to-long v4, p3

    mul-long/2addr v2, v4

    int-to-long p3, p4

    div-long/2addr v2, p3

    add-long/2addr v2, v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getProgress()I

    move-result p0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "BackupRestoreSecUtil"

    const-string p3, "casting error"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendBackupProgress(I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->getInstance()Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/backup/SmartSwitchUtil;->sendRestoreProgress(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public decryptFile(Ljava/io/File;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v2

    const-string v3, "BackupRestoreSecUtil"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    const-string v7, ".zip"

    invoke-static {v2, v7}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/high16 v5, 0x10000

    invoke-direct {v1, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    :try_start_3
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v7, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    :try_start_4
    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->createDecryptor(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v9

    int-to-long v9, v9

    new-array v11, v5, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    const-wide/16 v14, 0x0

    move-object/from16 v17, v3

    move/from16 v16, v4

    :goto_0
    :try_start_6
    invoke-virtual {v8, v11, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v5, -0x1

    const/16 v18, 0x1

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    if-eq v3, v5, :cond_3

    int-to-long v1, v3

    add-long/2addr v14, v1

    add-int/lit8 v1, v16, 0x1

    :try_start_7
    invoke-virtual {v6, v11, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    rem-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v23, v2, v12

    const-wide/16 v25, 0x3e8

    cmp-long v5, v23, v25

    if-lez v5, :cond_1

    sget-object v5, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    sget-object v12, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_START:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    move/from16 v18, v1

    move-wide/from16 v21, v2

    move-object v13, v5

    const-wide/32 v4, 0x7fffffff

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v13, v12, v1, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->sendProgress(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;II)V

    move-wide/from16 v12, v21

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_1
    move-object v1, v0

    goto :goto_8

    :cond_1
    move/from16 v18, v1

    :goto_2
    move/from16 v16, v18

    move-object/from16 v2, v19

    move-object/from16 v1, v20

    const/4 v4, 0x0

    :goto_3
    const/high16 v5, 0x10000

    goto :goto_0

    :cond_2
    move/from16 v18, v1

    move/from16 v16, v18

    move-object/from16 v2, v19

    move-object/from16 v1, v20

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->RESTORE:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_START:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    const-wide/32 v3, 0x7fffffff

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v5, v11

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->sendProgress(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    return v18

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :catchall_1
    move-exception v0

    :goto_4
    move-object v1, v0

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    :goto_5
    move-object v1, v0

    goto :goto_e

    :catchall_3
    move-exception v0

    :goto_6
    move-object v1, v0

    goto :goto_c

    :catchall_4
    move-exception v0

    :goto_7
    move-object v1, v0

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    goto :goto_1

    :catchall_6
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    goto :goto_1

    :goto_8
    if-eqz v8, :cond_4

    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_9
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_8
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    goto :goto_7

    :goto_a
    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception v0

    move-object v2, v0

    :try_start_10
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_a
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    goto :goto_6

    :goto_c
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object v2, v0

    :try_start_12
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :catchall_c
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    goto :goto_5

    :goto_e
    :try_start_13
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v0

    move-object v2, v0

    :try_start_14
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :catchall_e
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    goto :goto_4

    :goto_10
    :try_start_15
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    move-object v2, v0

    :try_start_16
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v1
    :try_end_16
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0

    :catch_1
    move-exception v0

    move-object/from16 v17, v3

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error decrypting file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public encryptFile(Ljava/io/File;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v2

    const-string v3, "BackupRestoreSecUtil"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    const-string v7, ".enc"

    invoke-static {v2, v7}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/high16 v5, 0x10000

    invoke-direct {v1, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    :try_start_3
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v7, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    :try_start_4
    invoke-direct {v0, v6}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->createEncryptor(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v9

    int-to-long v9, v9

    new-array v11, v5, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    const-wide/16 v14, 0x0

    move-object/from16 v17, v3

    move/from16 v16, v4

    :goto_0
    :try_start_6
    invoke-virtual {v1, v11, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v5, -0x1

    const/16 v18, 0x1

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    if-eq v3, v5, :cond_3

    int-to-long v1, v3

    add-long/2addr v14, v1

    add-int/lit8 v1, v16, 0x1

    :try_start_7
    invoke-virtual {v8, v11, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    rem-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v23, v2, v12

    const-wide/16 v25, 0x3e8

    cmp-long v5, v23, v25

    if-lez v5, :cond_1

    sget-object v5, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    sget-object v12, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_SECOND_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    move/from16 v18, v1

    move-wide/from16 v21, v2

    move-object v13, v5

    const-wide/32 v4, 0x7fffffff

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v13, v12, v1, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->sendProgress(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;II)V

    move-wide/from16 v12, v21

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_1
    move-object v1, v0

    goto/16 :goto_9

    :cond_1
    move/from16 v18, v1

    :goto_2
    move/from16 v16, v18

    move-object/from16 v2, v19

    move-object/from16 v1, v20

    const/4 v4, 0x0

    :goto_3
    const/high16 v5, 0x10000

    goto :goto_0

    :cond_2
    move/from16 v18, v1

    move/from16 v16, v18

    move-object/from16 v2, v19

    move-object/from16 v1, v20

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;->BACKUP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_SECOND_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    const-wide/32 v3, 0x7fffffff

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v5, v11

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreSecUtil;->sendProgress(Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$CopyMode;Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v8, :cond_4

    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_4
    move-object v1, v0

    goto :goto_b

    :cond_4
    :goto_5
    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    return v18

    :catch_0
    move-exception v0

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    :goto_6
    move-object v1, v0

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    :goto_7
    move-object v1, v0

    goto :goto_f

    :catchall_4
    move-exception v0

    :goto_8
    move-object v1, v0

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    goto :goto_1

    :catchall_6
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    goto :goto_1

    :goto_9
    if-eqz v8, :cond_5

    :try_start_d
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_a
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catchall_8
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    goto :goto_4

    :goto_b
    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object v2, v0

    :try_start_10
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_a
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    goto :goto_8

    :goto_d
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception v0

    move-object v2, v0

    :try_start_12
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catchall_c
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    goto :goto_7

    :goto_f
    :try_start_13
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto :goto_10

    :catchall_d
    move-exception v0

    move-object v2, v0

    :try_start_14
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_e
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    goto :goto_6

    :goto_11
    :try_start_15
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    goto :goto_12

    :catchall_f
    move-exception v0

    move-object v2, v0

    :try_start_16
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v1
    :try_end_16
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0

    :catch_1
    move-exception v0

    move-object/from16 v17, v3

    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error encrypting file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method
