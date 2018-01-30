.class Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;
.super Ljava/lang/Object;
.source "MdlogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/MdlogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileUtil"
.end annotation


# direct methods
.method static synthetic -wrap0(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;->delDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Current folder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->-wrap1(Ljava/lang/String;)V

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Target  folder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->-wrap1(Ljava/lang/String;)V

    .line 185
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v5, "tgtFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 187
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 190
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v3, "srcFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "srcFileList":[Ljava/lang/String;
    if-nez v4, :cond_1

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is empty!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->-wrap1(Ljava/lang/String;)V

    .line 194
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_4

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "sourceFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "sourceFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 181
    .end local v1    # "sourceFile":Ljava/io/File;
    .end local v2    # "sourceFileName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "sourceFile"    # Ljava/lang/String;
    .param p1, "targetFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/high16 v0, 0xa00000

    .line 211
    .local v0, "buf_size":I
    new-array v1, v0, [B

    .line 214
    .local v1, "buffer":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->-wrap1(Ljava/lang/String;)V

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Target  file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->-wrap1(Ljava/lang/String;)V

    .line 217
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 218
    .local v3, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 219
    .local v4, "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, "byteRead":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 220
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 223
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 209
    return-void
.end method

.method private static delDirectory(Ljava/io/File;)Z
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 227
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "children":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 230
    return v5

    .line 232
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 233
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/MdlogService$FileUtil;->delDirectory(Ljava/io/File;)Z

    move-result v2

    .line 234
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 235
    return v5

    .line 232
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    return v3
.end method

.method public static fileToZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 26
    .param p0, "sourceDir"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/lang/String;
    .param p2, "zipFileName"    # Ljava/lang/String;

    .prologue
    .line 251
    const/4 v11, 0x0

    .line 252
    .local v11, "flag":Z
    const/4 v9, 0x0

    .line 253
    .local v9, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 254
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 255
    .local v12, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 256
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    const/16 v22, 0x0

    .line 258
    .local v22, "zos":Ljava/util/zip/ZipOutputStream;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 259
    .local v21, "zipFileFullName":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "fileToZip, sourceDir = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", targetDir = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->-wrap1(Ljava/lang/String;)V

    .line 260
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "fileToZip, zipFileFullName = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->-wrap1(Ljava/lang/String;)V

    .line 262
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v16, "sourceFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_0

    .line 264
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "does not exist"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->-wrap1(Ljava/lang/String;)V

    .line 265
    const/16 v24, 0x0

    return v24

    .line 267
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 268
    .local v17, "sourceFiles":[Ljava/io/File;
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 269
    :cond_1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "is empty"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/qualcomm/qti/internal/telephony/MdlogService;->-wrap1(Ljava/lang/String;)V

    .line 270
    const/16 v24, 0x0

    return v24

    .line 273
    :cond_2
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v18, "tgtDirFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_3

    .line 275
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 279
    :cond_3
    :try_start_0
    new-instance v20, Ljava/io/File;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v20, "zipFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->createNewFile()Z

    .line 281
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .local v13, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v5, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 283
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v23, Ljava/util/zip/ZipOutputStream;

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 284
    .local v23, "zos":Ljava/util/zip/ZipOutputStream;
    const/16 v24, 0x8

    :try_start_3
    invoke-virtual/range {v23 .. v24}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 285
    .end local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    const/16 v24, 0x9

    invoke-virtual/range {v23 .. v24}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 286
    const/16 v24, 0x2800

    move/from16 v0, v24

    new-array v6, v0, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 287
    .local v6, "bufs":[B
    const/4 v14, 0x0

    .local v14, "i":I
    move-object v3, v2

    .local v3, "bis":Ljava/io/BufferedInputStream;
    move-object v10, v9

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v14, v0, :cond_7

    .line 288
    new-instance v19, Ljava/util/zip/ZipEntry;

    aget-object v24, v17, v14

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 289
    .local v19, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 290
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v24, v17, v14

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 291
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v24, 0x2800

    move/from16 v0, v24

    invoke-direct {v2, v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 292
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v15, 0x0

    .line 293
    .local v15, "read":I
    :goto_1
    const/16 v24, 0x0

    const/16 v25, 0x2800

    :try_start_6
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v2, v6, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v15

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v15, v0, :cond_6

    .line 294
    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1, v15}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    .line 299
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bufs":[B
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "read":I
    .end local v19    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v22, v23

    .end local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v22, "zos":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .line 300
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "zipFile":Ljava/io/File;
    .end local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_2
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    new-instance v24, Ljava/lang/RuntimeException;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 303
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v24

    .line 305
    :goto_3
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 306
    :cond_4
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 303
    :cond_5
    throw v24

    .line 287
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bufs":[B
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "i":I
    .restart local v15    # "read":I
    .restart local v19    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v20    # "zipFile":Ljava/io/File;
    .restart local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_6
    add-int/lit8 v14, v14, 0x1

    move-object v3, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 297
    .end local v15    # "read":I
    .end local v19    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_7
    const/4 v11, 0x1

    .line 305
    if-eqz v3, :cond_8

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 306
    :cond_8
    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 312
    :cond_9
    return v11

    .line 307
    :catch_1
    move-exception v7

    .line 308
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    new-instance v24, Ljava/lang/RuntimeException;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v24

    .line 307
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "bufs":[B
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "i":I
    .end local v20    # "zipFile":Ljava/io/File;
    .end local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_2
    move-exception v7

    .line 308
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    new-instance v24, Ljava/lang/RuntimeException;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v24

    .line 303
    .end local v7    # "e":Ljava/io/IOException;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "zipFile":Ljava/io/File;
    .local v22, "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v24

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v24

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v24

    move-object/from16 v22, v23

    .end local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v22, "zos":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bufs":[B
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "i":I
    .restart local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_4
    move-exception v24

    move-object/from16 v22, v23

    .end local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v19    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_5
    move-exception v24

    move-object/from16 v22, v23

    .end local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 299
    .end local v6    # "bufs":[B
    .end local v14    # "i":I
    .end local v19    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v20    # "zipFile":Ljava/io/File;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    .local v22, "zos":Ljava/util/zip/ZipOutputStream;
    :catch_3
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "zipFile":Ljava/io/File;
    :catch_4
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bufs":[B
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "i":I
    .restart local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_6
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object/from16 v22, v23

    .end local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v22, "zos":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v19    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_7
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object/from16 v22, v23

    .end local v23    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method
